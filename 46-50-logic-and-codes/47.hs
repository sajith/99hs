{--

(*) Truth tables for logical expressions (2).

Continue problem P46 by defining and/2, or/2, etc as being
operators. This allows to write the logical expression in the more
natural way, as in the example: A and (A or not B). Define operator
precedence as usual; i.e. as in Java.

Example:

* (table A B (A and (A or not B)))
true true true
true fail true
fail true fail
fail fail fail

Example in Haskell:

> table2 (\a b -> a `and'` (a `or'` not b))
True True True
True False True
False True False
False False False

--}

import           Control.Monad (forM_)
import           Prelude       hiding (and, or)

------------------------------------------------------------

-- TODO: Actually figure out precedence rules for Java, as required by
-- the problem statement.
--
-- Haskell fixity declaration levels range from 0 to 9, 9 being the
--strongest.

infixr 9 `and'`
infixr 8 `or'`
infixr 7 `impl`
infixr 6 `equ`

and' True True = True
and' _  _      = False

or' False False = False
or' _ _         = True

nor False False = True
nor _ _         = False

xor True False = True
xor False True = True
xor _ _        = False

impl True False = False
impl _ _        = True

equ = undefined

------------------------------------------------------------

table2 expr = forM_ pairs (eval expr)

eval expr (a,b) = putStrLn $ show a ++ " " ++ show b ++ " " ++ show (expr a b)
pairs = [(True, True), (True,False), (False,True), (False,False)]

------------------------------------------------------------

