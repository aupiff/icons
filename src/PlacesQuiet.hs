{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE FlexibleContexts #-}

module PlacesQuiet where

import Diagrams.Prelude
import Diagrams.TwoD.Size

blackFill = fc black # lw none

h :: Double
h = 2.2
w :: Double
w = 1.8

innerH = 1.1
innerW = 0.6

a = angleBetweenDirs (direction $ V2 (w - innerW) h) (direction $ V2 1 0)

qShape = polygon ( with & polyType .~ PolySides [ a, 90 @@ deg,  90 @@ deg, 270 @@ deg]
                                                [ sqrt $ (w - innerW) ^ 2 + h ^ 2, innerW, innerH, innerW, innerH]
                 ) # blackFill # alignT

pqLogo = pad 2.2 $ center $ hsep (0.3) [ qShape # reflectX, qShape ]
