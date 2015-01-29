{-# LANGUAGE NoMonomorphismRestriction #-}

module Boustro where

import Diagrams.Prelude
import Diagrams.TwoD.Size

iconWidth = 1
iconHeight = 1

blackFill = fc black # lw none
sourceBar = square 1 # scaleY 0.1 # scaleX 0.5 # blackFill # alignX (-1) # alignY (-1)
mediumSourceBar = square 1 # scaleY 0.1 # scaleX 0.6 # blackFill # alignX (-1) # alignY (-1)
longSourceBar = square 1 # scaleY 0.1 # scaleX 0.7 # blackFill # alignX (-1) # alignY (-1)

sourceWedge = annularWedge 0.15 0.05 (1/4 @@ turn) (3/4 @@ turn) # blackFill # scaleX (-1) # alignX (-1) # alignY (-1)
bar1 = longSourceBar # scaleX 1.3
wedge1 = sourceWedge # translate (r2 (0.9, 0))
bar2 = sourceBar # scaleX 0.8 # translate (r2 (0.5, 0.2))
wedge2 = sourceWedge # scaleX (-1) # translate (r2 (0.5, 0.2))
bar3 = mediumSourceBar # translate (r2 (0.5, 0.4))
wedge3 = sourceWedge # translate (r2 (1.1, 0.4))
bar4 = sourceBar # scaleX 0.8 # translate (r2 (0.7, 0.6))

boustroLogo = bar1 `atop` wedge1 `atop` bar2 `atop` wedge2 `atop` bar3 `atop` wedge3 `atop` bar4
