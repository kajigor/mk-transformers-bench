ocamlfind ocamlopt -rectypes -o run -package benchmark -package ocanren -package GT -syntax camlp5o -package GT.syntax.all -package ocanren.syntax -linkpkg tester.ml helper.ml bridge.ml original.ml  bridge_run.ml

