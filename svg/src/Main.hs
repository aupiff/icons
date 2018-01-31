{-# LANGUAGE NoMonomorphismRestriction #-}

import Diagrams.Prelude
import Diagrams.Backend.SVG
import Diagrams.TwoD.Size
import Boustro (boustroLogo)
import PlacesQuiet

iconSize = mkSizeSpec $ V2 (Just 120) Nothing

main = do renderSVG "svg/boustro-logo.svg" iconSize (boustroLogo :: Diagram B)
          renderSVG "svg/pq-logo.svg" iconSize (pqLogo :: Diagram B)
