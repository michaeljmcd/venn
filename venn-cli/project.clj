(defproject venn-cli "0.1.0-SNAPSHOT"
  :description "A diagramming language"
  :url "http://example.com/FIXME"
  :license {:name "MIT"
            :url "https://opensource.org/licenses/MIT"}
  :dependencies [[org.clojure/clojure "1.8.0"]]
  :main ^:skip-aot venn-cli.core
  :target-path "target/%s"
  :profiles {:uberjar {:aot :all}})
