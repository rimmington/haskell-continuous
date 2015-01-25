{-# LANGUAGE ScopedTypeVariables #-}

module MainSpec (spec) where

import Main (incr)
import Test.Hspec
import Test.Hspec.QuickCheck

spec :: Spec
spec = do
    describe "incr" $ do
        it "can add 1 + 1" $ do
            incr 1 `shouldBe` 2
        prop "always adds 1 to an Int" $ do
            \(x :: Int) -> incr x == (x + 1)
