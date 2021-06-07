//
// Created by paolinsky on 6/6/21.
//

#include <stddef.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include "shell_commands.h"

// List of builtin commands, followed by their corresponding functions.
char *builtin_commands[] = {
        "cd",
        "help",
        "exit"
};

int pash_num_builtins() {
    return sizeof(builtin_commands) / sizeof(char *);
}

// Builtin function implementations
int pash_cd(char **args) {
    if (args[1] == NULL) {
        // Go to home folder
        if (chdir(getenv("HOME")) != 0) {
            perror("pash");
        }
    } else {
        if (chdir(args[1]) != 0) {
            perror("pash");
        }
    }
    return 1;
}

int pash_help(char **args) {
    printf("Paolinsky's Bash (PASH)\n");
    printf("Type program names and arguments (Escaped characters and quoted args are not supported yet)\n");
    printf("The following commands are built in: \n");

    for (int i = 0; i < pash_num_builtins(); i++) {
        printf("    %s\n", builtin_commands[i]);
    }

    printf("Use the man command for information on other commands\n");
    return 1;
}

int pash_exit(char **args) {
    return 0;
}