module Polyndrome
    ( isPolyndrome
    , preProccess
    ) where

import qualified Data.Text as T
import Data.Char (isLetter)

stripAllNoneLetters :: T.Text -> T.Text
stripAllNoneLetters = T.filter isLetter 

toLowerCase :: T.Text -> T.Text
toLowerCase = T.toLower

preProccess :: T.Text -> T.Text
preProccess = toLowerCase . stripAllNoneLetters

isPolyndrome :: T.Text -> Bool
isPolyndrome xs = prepText == T.reverse prepText
  where
    prepText = preProccess xs
