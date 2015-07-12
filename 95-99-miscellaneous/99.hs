{--

Problem 99

(***) Crossword puzzle

Given an empty (or almost empty) framework of a crossword puzzle and a
set of words. The problem is to place the words into the framework.

https://prof.ti.bfh.ch/hew1/informatik3/prolog/p-99/p99.gif

The particular crossword puzzle is specified in a text file which
first lists the words (one word per line) in an arbitrary order. Then,
after an empty line, the crossword framework is defined. In this
framework specification, an empty character location is represented by
a dot (.). In order to make the solution easier, character locations
can also contain predefined character values. The puzzle above is
defined in the file p99a.dat, other examples are p99b.dat and
p99d.dat. There is also an example of a puzzle (p99c.dat) which does
not have a solution.

Words are strings (character lists) of at least two characters. A
horizontal or vertical sequence of character places in the crossword
puzzle framework is called a site. Our problem is to find a compatible
way of placing words onto sites.

Hints: (1) The problem is not easy. You will need some time to
thoroughly understand it. So, don't give up too early! And remember
that the objective is a clean solution, not just a quick-and-dirty
hack!

(2) Reading the data file is a tricky problem for which a solution is
provided in the file p99-readfile.pl. See the predicate read_lines/2.

(3) For efficiency reasons it is important, at least for larger
puzzles, to sort the words and the sites in a particular order. For
this part of the problem, the solution of P28 may be very helpful.

Example in Haskell:

ALPHA
ARES
POPPY

  .
  .
.....
  . .
  . .
    .

> solve $ readCrossword "ALPHA\nARES\nPOPPY\n\n  .  \n  .  \n.....\n  . .\n  . .\n    .\n"

[[((3,1),'A'),((3,2),'L'),((3,3),'P'),((3,4),'H'),((3,5),'A'),((1,3),'P'),((2,3)
,'O'),((3,3),'P'),((4,3),'P'),((5,3),'Y'),((3,5),'A'),((4,5),'R'),((5,5),'E'),((
6,5),'S')]]

--}
