open GT
open OCanren
open OCanren.Std
open Helper

let topLevel x0 x1 = let rec evalo st fm u = (fresh (z w v y x) ((((fm === conj x y) &&& ((evalo st x v) &&& ((evalo st y w) &&& (ando v w u)))) ||| (((fm === disj x y) &&& ((evalo st x v) &&& ((evalo st y w) &&& (oro v w u)))) ||| (((fm === neg x) &&& ((evalo st x v) &&& (noto v u))) ||| ((fm === var z) &&& (elemo z st u))))))) and ando x y v = (((x === !!true) &&& ((y === !!true) &&& (v === !!true))) ||| (((x === !!false) &&& ((y === !!true) &&& (v === !!false))) ||| (((x === !!true) &&& ((y === !!false) &&& (v === !!false))) ||| ((x === !!false) &&& ((y === !!false) &&& (v === !!false)))))) and oro x y v = (((x === !!true) &&& ((y === !!true) &&& (v === !!true))) ||| (((x === !!false) &&& ((y === !!true) &&& (v === !!true))) ||| (((x === !!true) &&& ((y === !!false) &&& (v === !!true))) ||| ((x === !!false) &&& ((y === !!false) &&& (v === !!false)))))) and noto x y = (((x === !!true) &&& (y === !!false)) ||| ((x === !!false) &&& (y === !!true))) and elemo n s v = (fresh (n' t h) ((((n === Std.Nat.zero) &&& ((s === (Std.(%) (h) (t))) &&& (v === h))) ||| ((n === (Std.Nat.succ (n'))) &&& ((s === (Std.(%) (h) (t))) &&& (elemo n' t v)))))) in      (((evalo x0 x1 !!true)))
