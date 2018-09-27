{-# LANGUAGE OverloadedStrings #-}
module Main where
import Polyndrome
import qualified Data.Text as T
import qualified Data.Text.IO as TIO

main :: IO ()
main = do
    TIO.putStrLn "Enter word and I'll check if it's a polyndrome"
    input <- TIO.getLine
    let response =
            if isPolyndrome input
                then "Yes, it is."
                else "No, it's not."
    TIO.putStrLn response
