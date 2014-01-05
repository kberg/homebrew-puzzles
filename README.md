homebrew-puzzles
================

Brew formulae for [Simon Tatham's Portable Puzzle Collection](http://www.chiark.greenend.org.uk/~sgtatham/puzzles/)

    $ brew tap kberg/puzzles
    $ brew install --env=std --HEAD puzzles

Issues
------
  1. --env=std is required, but not pleasant, but is required for the halibut dependency.
  2. --HEAD is required, but also not pleasant, and is based on the lack of a version number in the source code repository.
  3. There's no version number in the binary, and is probably set via a VER environment variable in the BUILD file. Perhaps there's a way to fix this, and issue 2, simultaneously.

