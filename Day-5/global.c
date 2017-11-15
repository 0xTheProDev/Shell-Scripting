/**
 * Create a Process Hieararchy using Fork/Vfork
 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int glb = 1234;

int main(void) {
	if (fork() == 0) {
		printf("%lu First Child Created... Global: %d\n", (long unsigned) getpid(), glb);
		glb = 55;
		exit(0);
	}
	printf("%lu Parent Process... Global: %d\n", (long unsigned) getpid(), glb);
	if (vfork() == 0) {
		printf("%lu Second Child Created... Global: %d\n", (long unsigned) getpid(), glb);
		glb = 66;
		exit(0);
	}
	printf("%lu Parent Process... Global: %d\n", (long unsigned) getpid(), glb);
}
