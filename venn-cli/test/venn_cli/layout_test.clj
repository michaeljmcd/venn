(ns venn-cli.layout-test
  (:require [clojure.test :refer :all]
            [venn-cli.layout :refer :all]))

(deftest basic
  (testing "Grid generates a simple fragment."
    (let [a (venn-cli.layout/->Grid "asdf" [])]
      (is (= "<g />" (venn-cli.layout/to-svg a))))
    ))
