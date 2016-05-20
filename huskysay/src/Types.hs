module Types
where

data Point = B | W
 deriving Show

type GlyphRow = [Point]
type Glyph = [GlyphRow]

data Font = Font {
    size :: Int
  , filler :: Char
  , mapping :: [(Char, Glyph)]
} deriving Show
