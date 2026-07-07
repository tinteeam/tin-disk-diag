#include <unistd.h>

int main() {
    // Execute the init process
    execl("/bin/cbash", NULL);

    // If execl returns, there was an error
    return 1;
}