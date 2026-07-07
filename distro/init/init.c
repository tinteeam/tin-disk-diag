#include <unistd.h>
#include <stdio.h>

int main() {
    // Execute the init process
    printf("Starting user-space....\n");
    execl("/usr/bin/cbash", NULL);

    // If execl returns, there was an error
    printf("Failed to start user-space or cbash closed. \n");
    return 1;
}