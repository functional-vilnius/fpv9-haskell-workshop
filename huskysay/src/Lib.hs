module Lib
where

import Types
import Data.List

defaultReply :: String
defaultReply = "hi"

render :: String -- ^ text to render
       -> Font -- ^ font to use
       -> String -- result
render txt font =
  intercalate "\n" $
  map (map pointToChar . concat)
      (transpose (map findChar txt))
  where
    findChar c = case (lookup c (mapping font)) of
      Just g -> g
      Nothing -> error $ "No data for char: " ++ [c]

    pointToChar p =
      case p of
        W -> ' '
        B -> filler font
