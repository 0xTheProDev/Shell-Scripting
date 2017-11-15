/**
 * Execute another C binary (hello.out)
 */
 
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>

#define BUFF_SIZE 4096

int status = 0;

int main(int argc, char* argv[]) {
        if (fork() == 0) {
                execlp("./hello.out", "./hello.out", argv[1], (char*)0);
                // system("./hello.out");
        } else {
                wait(&status);
        }
}
