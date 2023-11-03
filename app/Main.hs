{-# LANGUAGE OverloadedStrings #-}

module Main where

import Data.Monoid (mconcat)
import Web.Scotty

main :: IO ()
main = scotty 3000 $
  get "/:word" $ do
    x <- param "word"
    html $ mconcat ["<h1>Hello, ", x, " world!</h1>"]

inc :: Num a => a -> a
inc x = x + 1
