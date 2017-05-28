(ns venn-cli.layout-test
  (:require [clojure.test :refer :all]
            [venn-cli.layout :refer :all]))

(deftest basic-grid
  (testing "Grid generates a simple fragment."
    (let [a (->Grid "asdf" [])]
      (is (= "<g><text>asdf</text></g>" (to-svg a))))
    ))

(deftest basic-string
  (testing "String generates a simple fragment."
    (let [a "Test 1 2 3"]
      (is (= "<text>Test 1 2 3</text>" (to-svg a)))
      )))

(deftest basic-rectangle
  (testing "Generates rect with contents."
    (let [a (->Rectangle 100 100 "asdf" [])]
      (is (= "<rect><text>asdf</text></rect>" (to-svg a)))
      )))
