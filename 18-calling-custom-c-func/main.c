#include<stdio.h>

extern void greet(char* name);

void greet(char* name) {
	printf("C func says: hello %s",name);
}
