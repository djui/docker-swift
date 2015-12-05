# Swift Docker image

A Docker image that allows using Apple's
[Swift](https://swift.org/) to compile source files and use the REPL.

**Note:** This is not OpenStack's [Swift](http://swift.openstack.org/).


## Build

    $ docker build -t swift .


## Usage

### Default Usage

    $ docker run --rm -it swift --version
    Swift version 2.2-dev (LLVM 46be9ff861, Clang 4deb154edc, Swift 778f82939c)
    Target: x86_64-unknown-linux-gnu

    $ docker run --rm -it swift --help
    OVERVIEW: Swift compiler
    
    USAGE: swift [options] <inputs>
    
    OPTIONS:
      -assert-config <value> Specify the assert_configuration replacement. Possible values are Debug, Release, Replacement.
      -D <value>             Specifies one or more build configuration options
      -framework <value>     Specifies a framework which should be linked against
      -F <value>             Add directory to framework search path
      -gline-tables-only     Emit minimal debug info for backtraces only
      -gnone                 Don't emit debug info
      -g                     Emit debug info
      -help                  Display available options
      -I <value>             Add directory to the import search path
      -j <n>                 Number of commands to execute in parallel
      -L <value>             Add directory to library link search path
      -l<value>              Specifies a library which should be linked against
      -module-cache-path <value>
                             Specifies the Clang module cache path
      -module-link-name <value>
                             Library to link against when using this module
      -module-name <value>   Name of the module to build
      -nostdimport           Don't search the standard library import path for modules
      -num-threads <n>       Enable multi-threading and specify number of threads
      -Onone                 Compile without any optimization
      -Ounchecked            Compile with optimizations and remove runtime safety checks
      -O                     Compile with optimizations
      -sdk <sdk>             Compile against <sdk>
      -target-cpu <value>    Generate code for a particular CPU variant
      -target <value>        Generate code for the given target
      -version               Print version information and exit
      -v                     Show commands to run and use verbose output
      -Xcc <arg>             Pass <arg> to the C/C++/Objective-C compiler
      -Xlinker <value>       Specifies an option which should be passed to the linker
    