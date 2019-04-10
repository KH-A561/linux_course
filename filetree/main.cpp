#include <iostream>
#include <dirent.h>
#include <cstring>
#include <unistd.h>
#include <cstdlib>
#include <sys/stat.h>
#include <limits.h>

using namespace std;

bool sameStat(struct stat s1, struct stat s2) {
  return s1.st_dev == s2.st_dev && s1.st_ino == s2.st_ino;
}

std::string getExePath() {
  char result[PATH_MAX];
  string resStr;
  ssize_t count = readlink("/proc/self/exe", result, PATH_MAX);
  if (count <= 0) {
    throw runtime_error("can't get current path");
  }
  resStr = std::string(result, count);
  resStr.resize(resStr.find_last_of('/'));
  return resStr;
}

bool isLinkToOrigin(struct stat *direntStat, char *direntPath, char *originPath) {
  if (S_ISLNK(direntStat->st_mode)) {
    char linkPath[1024];
    ssize_t n = readlink(direntPath,
                         linkPath,
                         1024);
    if (n == -1) {
      throw runtime_error("can't read symbolic link");
    }
    linkPath[n] = 0;
    if (strcmp(originPath, linkPath) == 0) {
      return true;
    }
  }
  return false;
}

const void walkUpAndCountLinks() {
  int linkCount = 0;
  struct stat root{};
  struct stat currentPathStat{};
  dirent *direntStruct;
  struct stat direntStat{};
  char direntPath[1024];
  char outerDirectory[1024];
  string resultPath;
  char currentPath[1024];
  char originPath[1024];

  strcpy(currentPath, getExePath().c_str());
  strcpy(originPath, currentPath);

  if (lstat("/", &root) == -1) {
    throw std::runtime_error("can't get root");
  }

  while (true) {
    if (lstat(currentPath, &currentPathStat) == -1) {
      throw std::runtime_error("can't get current path");
    }
    if (sameStat(root, currentPathStat)) {
      break;
    }
    strcpy(outerDirectory, currentPath);
    strcat(outerDirectory, "/..");
    DIR *outerDir = opendir(outerDirectory);
    if (outerDir == nullptr) {
      throw std::runtime_error("can't open outer directory");
    }
    while ((direntStruct = readdir(outerDir)) != nullptr) {
      if ((strcmp(direntStruct->d_name, ".")) == 0) continue;
      if ((strcmp(direntStruct->d_name, "..")) == 0) continue;
      strcpy(direntPath, outerDirectory);
      strcat(direntPath, "/");
      strcat(direntPath, direntStruct->d_name);
      if (lstat(direntPath, &direntStat) == -1) {
        throw std::runtime_error(strcat(const_cast<char *>("can't get stat for "), direntPath));
      }
      if (isLinkToOrigin(&direntStat, direntPath, originPath)) {
        linkCount++;
      }
      if (sameStat(direntStat, currentPathStat)) {
        resultPath = '/' + string(direntStruct->d_name) + resultPath;
        cout << resultPath << endl;
        break;
      }
    }
    strcat(currentPath, "/..");
  }
  cout << "Origin: " << resultPath << '\n';
  cout << "Number of links: " << linkCount << '\n';
}

int main() {
  walkUpAndCountLinks();
  return 0;
}