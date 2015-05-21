{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
module Test.Tasty.SmallCheck.Setter where

import Control.Lens
import Test.SmallCheck.Series (Serial(series), CoSerial(coseries), localDepth)
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.SmallCheck (testProperty)

import Test.SmallCheck.Setter

testSetter
  :: ( Eq s, Show s, Show a
     , Serial IO a, Serial Identity a, CoSerial IO a
     , Serial IO s
     )
  => ASetter' s a -> TestTree
testSetter l = testGroup "Setter Laws"
  [ testProperty "set l y (set l x a) ≡ set l y a" $
      setterSetSet l series series series
  , testProperty "over l id ≡ id" $ setterId l series
  , testProperty "over l f . over l g ≡ over l (f . g)" $
      setterComposition l series' (coseries series') (coseries series')
  ]
    where series' = localDepth (\d -> d - 4) series
