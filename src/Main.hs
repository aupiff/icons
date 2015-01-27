{-# LANGUAGE NoMonomorphismRestriction #-}

import Diagrams.Prelude
import Diagrams.Backend.SVG
import Diagrams.TwoD.Size

verticalBar = square 1 # scaleX 0.3
horizontalBar = square 1 # scaleY 0.3

iconSize = mkSizeSpec (Just 120) Nothing

cross = verticalBar `atop` horizontalBar
anticross = cross # scaleY (-1)
orthodoxcross = verticalBar `atop` horizontalBar

main = do renderSVG "svg/cross.svg" iconSize (cross :: Diagram B R2)
          renderSVG "svg/anticross.svg" iconSize (anticross :: Diagram B R2)
          renderSVG "svg/orthodoxcross.svg" iconSize (orthodoxcross :: Diagram B R2)
