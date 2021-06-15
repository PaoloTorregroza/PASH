//
// Created by paolinsky on 6/6/21.
//

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include "utils.h"
#include "term_colors.h"



// ------------------------------------
// Public functions
// ------------------------------------

void format_shell_string(char *dir, char *shell) {
    char
        *home = "/home/",
        *user = getenv("USER"),
        hostname[32] = "",
        basePath[32] = "",
        userShell[64] = "";

    gethostname(hostname, sizeof(hostname));

    // Set base dir for removing from the full path
    strcat(basePath, home);
    strcat(basePath, user);

    // Set username in shell
    strcat(userShell, CYAN);
    strcat(userShell, user);
    strcat(userShell, NORMAL);
    strcat(userShell, "@");
    strcat(userShell, BLUE);
    strcat(userShell, hostname);
    strcat(userShell, ":~");
    strcat(userShell, NORMAL);

    // Check if substring is present
    int i = 0, j = 0, flag = 0, start = 0;

    strcat(dir, "$ ");
    strcat(dir, GREEN);

    char str[strlen(dir)];
    strcpy(str, dir);

    char substr[strlen(basePath)];
    strcpy(substr, basePath);

    while (str[i] != '\0') {
        if (str[i] == substr[j]) {
            if (!flag) {
                start = i;
            }
            j++;
            if (substr[j] == '\0') { break; }
            flag = 1;
        } else {
            flag = start = j = 0;
        }
        i++;
    }

    if (substr[j] == '\0' && flag) {
        for (i = 0; i < start; i++)
            shell[i] = str[i];

        // Replace substring whit another string
        for (j = 0; j < strlen(userShell); j++) {
            shell[i] = userShell[j];
            i++;
        }

        // Copy remaining portion
        for (j = start + strlen(substr); j < strlen(str); j++) {
            shell[i] = str[j];
            i++;
        }

        shell[i] = '\0';
    } else {
        fprintf(stderr,"\n%s is not a substring of %s\n", substr, str);
        fprintf(stderr,  "pash: directory parsing error\n");
        exit(EXIT_FAILURE);
    }
}
