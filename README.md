homebrew-puzzles
================

Brew formulae for [Simon Tatham's Portable Puzzle Collection](http://www.chiark.greenend.org.uk/~sgtatham/puzzles/)

    $ brew tap kberg/puzzles
    $ brew install --HEAD puzzles
    $ brew linkapps
    $ open -a Puzzles

Issues
------
  1. `--HEAD` is required, but also not pleasant, and is based on the lack of a version number in the source code repository.
  2. There's no version number in the binary, and is probably set via a VER environment variable to `make`. Perhaps there's a way to fix this, and issue 1, simultaneously.

