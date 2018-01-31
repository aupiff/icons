{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE FlexibleContexts #-}

module PlacesQuiet where

import Diagrams.Prelude
import Diagrams.TwoD.Size

blackFill = fc black # lw none

a = angleBetweenDirs (direction $ V2 2 4) (direction $ V2 0 (-1))

scaleneTriangle = polygon ( with & polyType .~ PolySides
                                [ a, 90 @@ deg ]
                                [ 4, sqrt 20 ]
                          ) # blackFill # alignT

pShape = scaleneTriangle ||| (rect 1.5 2 # alignT # blackFill)

pqLogo = pad 2.2 $ center $ hsep 0.5 [ pShape, pShape # reflectX ]
