module Main where

import Lib
import Defaults
import System.Environment

main :: IO ()
main = do
  args <- getArgs
  putStrLn $ render (getFirstArg args) defaultFont

getFirstArg :: [String] -> String
getFirstArg [arg] = arg
getFirstArg _ = error "Illegal arguments"
