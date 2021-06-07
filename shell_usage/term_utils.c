//
// Created by paolinsky on 6/6/21.
//

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>
#include <linux/limits.h>
#include "term_utils.h"
#include "shell_commands.h"
#include "../utils/utils.h"

// List of builtin commands, followed by their corresponding functions.
char *builtin_str[] = {
        "cd",
        "help",
        "exit"
};

int (*builtin_func[]) (char **) = {
        &pash_cd,
        &pash_help,
        &pash_exit
};

#define PASH_RL_BUFSIZE 1024
char *pash_read_line(void) {
    int bufsize = PASH_RL_BUFSIZE;
    int position = 0;
    char *buffer = malloc(sizeof(char) * bufsize);
    int c;

    if (!buffer) {
        fprintf(stderr, "pash: allocation error\n");
        exit(EXIT_FAILURE);
    }

    while(1) {
        // Read a character
        c = getchar();
        // If we get EOF, replace it whit null and return
        if (c == EOF || c == '\n') {
            buffer[position] = '\0';
            return buffer;
        } else {
            buffer[position] = c;
        }
        position++;

        // If wee exceed the buffer, reallocate.
        if (position >= bufsize) {
            bufsize += PASH_RL_BUFSIZE;
            buffer = realloc(buffer, bufsize);
        }
        if (!buffer) {
            fprintf(stderr, "pash: allocation error\n");
            exit(EXIT_FAILURE);
        }
    }
}

// MODERN_VERSION using getline() a function in stdio.h since 2008
//char *lsh_read_line(void)
//{
//    char *line = NULL;
//    ssize_t bufsize = 0; // have getline allocate a buffer for us
//
//    if (getline(&line, &bufsize, stdin) == -1){
//        if (feof(stdin)) {
//            exit(EXIT_SUCCESS);  // We recieved an EOF
//        } else  {
//            perror("readline");
//            exit(EXIT_FAILURE);
//        }
//    }
//
//    return line;
//}

#define LSH_TOK_BUFSIZE 64
#define LSH_TOK_DELIM " \t\r\n\a"
char **pash_split_line(char *line) {
    int bufsize = LSH_TOK_BUFSIZE, position = 0;
    char **tokens = malloc(bufsize * sizeof(char*));
    char *token;

    if (!tokens) {
        fprintf(stderr, "pash: allocation error\n");
        exit(EXIT_FAILURE);
    }

    token = strtok(line, LSH_TOK_DELIM);
    while (token != NULL) {
        tokens[position] = token;
        position++;

        if (position >= bufsize) {
            bufsize += LSH_TOK_BUFSIZE;
            tokens = realloc(tokens, bufsize * sizeof(char*));
            if (!tokens) {
                fprintf(stderr,  "pash: allocation error\n");
                exit(EXIT_FAILURE);
            }
        }

        token = strtok(NULL, LSH_TOK_DELIM);
    }

    tokens[position] = NULL;
    return tokens;
}

int pash_launch(char **args) {
    pid_t pid, wpid;
    int status;

    pid = fork();
    if (pid == 0) {
        // Child process
        // execvp replaces the current process whit a new one
        if (execvp(args[0], args) == -1) {
            perror("pash");
        }
        exit(EXIT_FAILURE);
    } else if (pid < 0) {
        // Error forking current process
        perror("pash");
    } else {
        // Is the parent process
        do {
            wpid = waitpid(pid, &status, WUNTRACED);
        } while (!WIFEXITED(status) && !WIFSIGNALED(status));
    }

    return 1;
}

int pash_execute(char **args) {
    if (args[0] == NULL) {
        return 1;
    }

    for (int i = 0; i < pash_num_builtins(); i++) {
        if (strcmp(args[0], builtin_str[i]) == 0) {
            return (*builtin_func[i])(args);
        }
    }

    return pash_launch(args);
}

void *pash_check_dir(char *shell){
    char cwd[PATH_MAX];
    getcwd(cwd, sizeof(cwd));
    format_shell_string(cwd, shell);
}
