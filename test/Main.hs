{-# LANGUAGE CPP #-}

module Main where

import Test.DocTest


main :: IO ()
main = doctest
  [ "-isrc/"
  , "--fast"
  , "-package first-class-families"
  , "-XConstraintKinds"
  , "-XDataKinds"
  , "-XKindSignatures"
  , "-XPolyKinds"
  , "-XScopedTypeVariables"
  , "-XTypeFamilies"
  , "-XTypeOperators"
  , "-XUndecidableInstances"
  , "-XTypeApplications"
  , "-XFlexibleContexts"

#if __GLASGOW_HASKELL__ < 806
  , "-XTypeInType"
#endif

  , "test/TypeErrors.hs"
  ]

