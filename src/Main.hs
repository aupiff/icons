{-# LANGUAGE NoMonomorphismRestriction #-}

import Diagrams.Prelude
import Diagrams.Backend.SVG
import Diagrams.TwoD.Size

blackFill = fc black # lw none
sourceBar = square 1 # scaleY 0.1 # blackFill

horizontalBar = sourceBar # translateY 0.18
verticalBar = sourceBar # rotateBy (1/4)
footBar = sourceBar # scaleX 0.5 # rotateBy (1/8) # translateY (-0.2)
inriBar = sourceBar # scaleX 0.5 # translateY 0.3

iconSize = mkSizeSpec (Just 120) Nothing

cross = verticalBar `atop` horizontalBar
anticross = cross # scaleY (-1)
orthodoxCross = verticalBar `atop` horizontalBar `atop` footBar
orthodoxCrossWithInri = verticalBar `atop` horizontalBar `atop` footBar `atop` inriBar

main = do renderSVG "svg/cross.svg" iconSize (cross :: Diagram B R2)
          renderSVG "svg/anticross.svg" iconSize (anticross :: Diagram B R2)
          renderSVG "svg/orthodox-cross.svg" iconSize (orthodoxCross :: Diagram B R2)
          renderSVG "svg/orthodox-cross-with-inri.svg" iconSize (orthodoxCrossWithInri :: Diagram B R2)
