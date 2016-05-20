module Lib
where

import           Data.List
import           Types

defaultReply :: String
defaultReply = "hi"

render :: String -- ^ text to render
       -> Font   -- ^ font to use
       -> String -- ^ result
render txt font =
  intercalate "\n" $
  map (concatGlyphRows font)
      (transpose (map (findChar font) txt))

concatGlyphRows :: Font       -- ^ font to use
                -> [GlyphRow] -- ^ list of neighbour grlyph rows
                -> String     -- ^ glyph neighbour rows as String
concatGlyphRows f rows =
  map (pointToChar f) (concat rows)

findChar :: Font -> Char -> Glyph
findChar f c = case lookup c (mapping f) of
      Just g -> g
      Nothing -> error $ "No data for char: " ++ [c]

pointToChar :: Font -> Point -> Char
pointToChar f p =
      case p of
        W -> ' '
        B -> filler f
