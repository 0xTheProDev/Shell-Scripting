/**
 * Print Hello World on console
 */
 
#include <stdio.h>

int main(int argc, char* argv[]) {
        if (argc != 2) {
                return 1;
        }
        printf("%s: Hello %s\n", argv[0], argv[1]);
        return 0;
}
