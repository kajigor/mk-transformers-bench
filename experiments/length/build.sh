ocamlfind ocamlopt -rectypes -o run -package benchmark -package mtime -package mtime.clock.os -package ocanren -package GT -syntax camlp5o -package GT.syntax.all -package ocanren.syntax -linkpkg helper.ml len0.ml len1.ml len2.ml len3.ml run.ml

