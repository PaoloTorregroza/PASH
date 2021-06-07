#include <stdio.h>
#include <stdlib.h>
#include "shell_usage/term_utils.h"


void pash_loop(void) {
    char *line;
    char **args;
    int status;

    char shell[256];

    pash_check_dir(shell);

    do {
        printf("%s", shell);
        line = pash_read_line();
        args = pash_split_line(line);
        status = pash_execute(args);
        pash_check_dir(shell);
    } while (status);
}

int main() {
    // Load config files

    // Run command loop
    pash_loop();
    // Perform any shutdown/cleanup

    return EXIT_SUCCESS;
}