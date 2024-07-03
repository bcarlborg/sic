# TODO
_This file contains a rough, incomplete list of TODOs and tasks for this project._

## Immediate Tasks
- Initialize project with this directory structure
```
myproject/
│
├── src/                     # Source files for the library
│   ├── libmodule1.c         # Implementation files for the library
│   ├── libmodule2.c
│   └── ...
│
├── include/                 # Header files for the library
│   ├── libmodule1.h         # Public interface for the library modules
│   ├── libmodule2.h
│   └── ...
│
├── bin/                     # Executable output (not version controlled)
│
├── obj/                     # Object files from compilation (not version controlled)
│
├── lib/                     # Compiled library files (not version controlled)
│
├── tests/                   # All tests reside here
│   ├── unit/                # Unit tests for individual components
│   │   ├── test_libmodule1.c
│   │   ├── test_libmodule2.c
│   │   └── ...
│   │
│   ├── integration/         # Integration tests (e.g., for CLI)
│   │   ├── test_cli.c
│   │   └── ...
│   │
│   └── test_utils/          # Utilities and helpers for testing
│       ├── mock.c
│       └── stubs.c
│
├── docs/                    # Documentation for the project
│
├── examples/                # Example programs using your library
│
├── Makefile                 # Makefile to automate build and test tasks
│
└── README.md                # Project overview and setup instructions
```
- Use github actions with the project for basic linting and other types of tests -- ensure there is a documentation file for each test etc.