#include <iostream>
#include <fcntl.h>
#include <unistd.h>

char buf1[] = "abcdefghij";
char buf2[] = "ABCDEFGHIJ";

int main(int argv, char** argc) {
  int fd;
  if ((fd = open("file.txt", O_RDWR | O_CREAT | O_TRUNC )) < 0)
    printf("ошибка вызова creat");
  if (write(fd, buf1, 10) != 10)
    printf("ошибка записи buf1");
  if (lseek(fd, 16384, SEEK_SET) == -1)
    printf("ошибка вызова lseek");
  if (write(fd, buf2, 10) != 10)
    printf("ошибка записи buf2");
  return 0;
}
