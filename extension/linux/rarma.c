#include <string.h>

static char version[] = "1.0";

void RVExtension(char *output, int outputSize, const char *function) {
  if(!strcmp(function, "version")) {
    strncpy(output, version, outputSize);
  } else {
    char *func;
    char *args;
    char *funcname = strdup(function);

    func = strtok(funcname, " ");
    args = strtok(NULL, " ");



    strncpy(output, args, outputSize);
  }
  output[outputSize-1] = '\0';
}
