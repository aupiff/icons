{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE FlexibleContexts #-}

module PlacesQuiet where

import Diagrams.Prelude
import Diagrams.TwoD.Size


scaleneTriangle = polygon ( with
                            & polyType .~ PolySides
                                [ 45 @@ deg, 90 @@ deg ]
                                [ 1        , 5         ]
                            )
pqLogo = scaleneTriangle ||| hsep 1 ||| (scaleneTriangle # reflectY)
