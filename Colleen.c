#include<stdio.h>
/*
	bonjour
*/
void useless_fx()
{
return ;
}
int main() {
/*
	bonjour, je suis un commentaire dans la fonction main
*/
char *code="#include<stdio.h>%1$c/*%1$c	bonjour%1$c*/%1$cvoid useless_fx()%1$c{%1$creturn ;%1$c}%1$cint main() {%1$c/*%1$c	bonjour, je suis un commentaire dans la fonction main%1$c*/%1$cchar *code=%2$c%3s%2$c;%1$cuseless_fx();%1$cprintf(code, 10, 34, code);%1$c}%1$c";
useless_fx();
printf(code, 10, 34, code);
}
