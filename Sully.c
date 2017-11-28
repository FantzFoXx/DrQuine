#include<stdio.h>
#include<unistd.h>
#include<fcntl.h>
#include<stdlib.h>
#include<string.h>

int main() {
int i = 5;
if (strcmp(__FILE__, "Sully.c") != 0){i--;}
char *code="#include<stdio.h>%1$c#include<unistd.h>%1$c#include<fcntl.h>%1$c#include<stdlib.h>%1$c#include<string.h>%1$cint main() {%1$cint i = %4$d;%1$cif (strcmp(__FILE__, %2$cSully.c%2$c) != 0){i--;}%1$cchar *code=%2$c%3$s%2$c;%1$cchar name[18] = {0};%1$cchar exe[18] = {0};%1$cchar command[100] = {0};%1$csprintf(name, %2$cSully_%%d.c%2$c, i);%1$csprintf(exe, %2$c./Sully_%%d%2$c, i);%1$csprintf(command, %2$cclang -Wall -Werror -Wextra Sully_%%d.c -o Sully_%%d%2$c,i,i);%1$cint fd=open(name, O_CREAT|O_WRONLY, 0644);%1$cdprintf(fd, code, 10, 34, code, i);%1$cclose(fd);%1$csystem(command);%1$cif(i > 0){system(exe);}%1$c}";
char name[18] = {0};
char exe[18] = {0};
char command[100] = {0};
sprintf(name, "Sully_%d.c", i);
sprintf(exe, "./Sully_%d", i);
sprintf(command, "clang -Wall -Werror -Wextra Sully_%d.c -o Sully_%d",i,i);
int fd=open(name, O_CREAT|O_WRONLY, 0644);
dprintf(fd, code, 10, 34, code, i);
close(fd);
system(command);
if(i > 0){system(exe);}
}
