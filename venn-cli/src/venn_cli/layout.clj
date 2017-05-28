(ns venn-cli.layout)

(defrecord Grid
  [contents props])

(defrecord Rectangle
  [width height contents props])

(defprotocol SvgTransmuter
  "Defines methods for converting to SVG."
  (to-svg [x] "Returns SVG for this element and all sub-elements."))

(extend-type Rectangle SvgTransmuter
  (to-svg [x] "<rect />"))

(extend-type Grid SvgTransmuter
  (to-svg [x] "<g />"))

(extend-type java.lang.String SvgTransmuter
  (to-svg [x] (.toString x)))
