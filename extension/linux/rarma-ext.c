#include <string.h>
#include <ruby.h>
static char version[] = "1.0";
VALUE rubyModule;
// init ruby vm
void RVExtension(char *output, int outputSize, const char *function) {
  if(!strcmp(function, "version")) {
    strncpy(output, version, outputSize);
  } else if(!strcmp(function, "init_rarma")) {
    ruby_init();
    rb_require("./loader.rb");
    rubyModule = rb_module_new();
    rb_funcall(rubyModule, rb_intern("init_rarma"), 1, rb_str_new2(version));
  } else {
    char *func;
    char *args;
    char *funcname = strdup(function);


    strncpy(output, args, outputSize);
  }
  output[outputSize-1] = '\0';
}
