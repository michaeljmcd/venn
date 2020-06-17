(ns venn.core
  (:require [clojure.data.xml :refer :all :as xml])
  (:gen-class))

(def a
    {:venn/diagram "my-pic"
      :venn/layers [
         {:venn/layer "asdf" 
          :venn/depth 1 
          :venn/layout :venn/grid
          :grid/rows 20 
          :grid/columns 5 
          :venn/contents [ 
            {:shapes/rectangle "100" :grid/column 1 :grid/row 1 } 
          ]
         }
         {:venn/layer "100"
          :venn/layout :venn/freeform
          :venn/depth 2
         }
     ]})

(defn render-layers [diagram]
 (xml/element "g" {}
     (let [ls (sort (comp > :venn/depth) (:venn/layers diagram))]
        (map (fn [l]
         (xml/element "g" {}
          (xml/element "title" {}
           (:venn/layer l))
          ))
         ls))))

(defn venn->svg [diagram]
 (xml/emit-str 
  (xml/element "svg" {}
                (render-layers diagram))))

(defn -main []
 (print "I am here")
 (spit "a.svg" (venn->svg a)))
