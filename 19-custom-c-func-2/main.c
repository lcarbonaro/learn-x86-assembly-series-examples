#include <stdio.h>
#include <string.h>

extern int multiply(int a, int b);
extern char* greet(char* name);

int multiply(int a, int b) {
	return a * b;
}

char* greet(char* name) {
    static char buffer[100] = "hello "; 
    return strcat(buffer, name);
}
