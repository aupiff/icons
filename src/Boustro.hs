{-# LANGUAGE NoMonomorphismRestriction #-}

module Boustro where

import Diagrams.Prelude
import Diagrams.TwoD.Size

iconWidth = 1
iconHeight = 1

blackFill = fc black # lw none
sourceBar = square 1 # scaleY 0.1 # blackFill

boustroLogo = sourceBar
