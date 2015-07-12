{--

Problem 96

(**) Syntax checker

In a certain programming language (Ada) identifiers are defined by the
syntax diagram below.

https://prof.ti.bfh.ch/hew1/informatik3/prolog/p-99/p96.gif

Transform the syntax diagram into a system of syntax diagrams which do
not contain loops; i.e. which are purely recursive. Using these
modified diagrams, write a predicate identifier/1 that can check
whether or not a given string is a legal identifier.

Example in Prolog:

% identifier(Str) :- Str is a legal identifier 

Example in Haskell:

> identifier "this-is-a-long-identifier"
True
> identifier "this-ends-in-"            
False
> identifier "two--hyphens" 
False

--}
