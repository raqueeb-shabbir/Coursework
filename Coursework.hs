module Coursework where

import Data.Map.Strict (Map)
import qualified Data.Map.Strict as Mapped
-- This will help us create the implementation of maps from keys to values
import Data.Bool


---First set up gameboard

startState :: Map (Int, Int) Bool
startState = let a x = (x - 3)^2 <= 1 in Mapped.fromList
 [((b, d), b/= 3 || d /= 3) | b <- [0..6], d <- [0..6], a b || a d]