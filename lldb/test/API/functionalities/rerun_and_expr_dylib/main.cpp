#include <cassert>
#include <dlfcn.h>
#include <string>

extern struct Foo imported;

int main() {
  // LIB_NAME defined on commandline
  std::string libname{"./"};
  libname += LIB_NAME;

  void *handle = dlopen(libname.c_str(), RTLD_NOW);
  struct Foo *foo = (struct Foo *)dlsym(handle, "global_foo");
  assert(foo != nullptr);

  return 0;
}
