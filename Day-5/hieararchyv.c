/**
 * Create a Process Hieararchy using Vfork
 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(void) {
	printf("PPID: %lu  PID: %lu  Parent Process (A)...\n", (long unsigned) getppid(), (long unsigned) getpid());
	if (vfork() == 0) {
		printf("PPID: %lu  PID: %lu  First Child Created (B)...\n", (long unsigned) getppid(), (long unsigned) getpid());
		exit(0);
	} else if (vfork() == 0) {
		printf("PPID: %lu  PID: %lu  Second Child Created (C)...\n", (long unsigned) getppid(), (long unsigned) getpid());
		if (vfork() == 0) {
		        printf("PPID: %lu  PID: %lu  Second-First Child Created (D)...\n", (long unsigned) getppid(), (long unsigned) getpid());
		        exit(0);
	        } else if (vfork() == 0) {
		        printf("PPID: %lu  PID: %lu  Second-Second Child Created (E)...\n", (long unsigned) getppid(), (long unsigned) getpid());
		        exit(0);
	        }
		exit(0);
	}
}
