#include<stdio.h>
#include<fcntl.h>
#include<unistd.h>
/*
	Ceci est un commentaire
*/
#define CODE "#include<stdio.h>%1$c#include<fcntl.h>%1$c#include<unistd.h>%1$c/*%1$c	Ceci est un commentaire%1$c*/%1$c#define CODE %2$c%3$s%2$c%1$c#define F int fd=open(%2$cGrace_kid.c%2$c, O_CREAT|O_WRONLY, 0644);dprintf(fd, CODE, 10, 34, CODE);close(fd)%1$c#define START() int main(){F;return(0);}%1$cSTART();%1$c"
#define F int fd=open("Grace_kid.c", O_CREAT|O_WRONLY, 0644);dprintf(fd, CODE, 10, 34, CODE);close(fd)
#define START() int main(){F;return(0);}
START();
