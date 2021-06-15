#include <stdio.h>
#include <stdlib.h>
#include <linux/limits.h>
#include "shell_usage/term_utils.h"


void pash_loop(void) {
    char *line;
    char **args;
    int status;

    char *shell;

    shell = pash_check_dir(shell);

    do {
        printf("%s", shell);
        line = pash_read_line();
        args = pash_split_line(line);
        status = pash_execute(args);
        shell = pash_check_dir(shell);
    } while (status);
}

int main() {
    // Load config files

    // Run command loop
    pash_loop();
    // Perform any shutdown/cleanup

    return EXIT_SUCCESS;
}
