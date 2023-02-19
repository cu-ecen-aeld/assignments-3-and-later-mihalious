#include<stdio.h>
#include<stdlib.h>
#include<syslog.h>

int main(int argc, char* argv[]) {
    openlog(NULL, 0, LOG_USER);
    if (argc != 3) {
        syslog(LOG_ERR, "One of the arguments was not specified\n" );
        exit(1);
    }
    char* write_file = argv[1];
    char* write_str = argv[2];
    const char* mode = "w";
    FILE* fptr = fopen(write_file, mode);

    if (fptr == NULL) {
        syslog(LOG_ERR, "Could not open or create the file\n");
        exit(1);
    }
    fputs(write_str, fptr);
    fclose(fptr);
    syslog(LOG_DEBUG, "Writing %s to %s", write_str, write_file);
    return 0;
}