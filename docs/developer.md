# Developer Docs

Docs for anyone who wants to contribute to this project

## Building the project

- In the root project directory run `bear -- make` or `bear -- make all` to build the `sic` executable in the `src/` directory.

## Dependencies

- This project uses GNU Make to administer the build process. I have only tested with GNU Make version 3.81, but presumably other versions will work as well.
- This project uses Clang version 18 to compile its executables.
- The repository also relies on using a number of `llvm` tools during development like `clang-tidy` and `clang-format`.
- There are a small handful of shell scripts in this repository as well. Those should be checked with `shellcheck`.
- This project's build system also relies on having [bear](https://github.com/rizsotto/Bear) installed for generating compilation databases.
