open GT
open OCanren
open OCanren.Std
open Helper

let topLevel x0 x1 =
  let rec ando x y b = (((x === !!true) &&& ((y === !!true) &&& (b === !!true))) ||| (((x === !!false) &&& ((y === !!true) &&& (b === !!false))) ||| (((x === !!true) &&& ((y === !!false) &&& (b === !!false))) ||| ((x === !!false) &&& ((y === !!false) &&& (b === !!false))))))
  and oro x y b = (((x === !!true) &&& ((y === !!true) &&& (b === !!true))) ||| (((x === !!false) &&& ((y === !!true) &&& (b === !!true))) ||| (((x === !!true) &&& ((y === !!false) &&& (b === !!true))) ||| ((x === !!false) &&& ((y === !!false) &&& (b === !!false))))))
  and noto x b = (((x === !!true) &&& (b === !!false)) ||| ((x === !!false) &&& (b === !!true)))
  and evalo st fm u = (fresh (x y v w z) ((((evalo st x v) &&& (rel_0 fm x v u st y w)) ||| ((fm === (var z)) &&& (elemo z st u)))))
  and elemo n s v = (fresh (h t n') ((((n === Nat.zero) &&& ((s === (h % t)) &&& (v === h))) ||| ((n === (Nat.succ n')) &&& ((s === (h % t)) &&& (elemo n' t v))))))
  and rel_0 fm x v u st y w = (((fm === (neg x)) &&& (noto v u)) ||| ((evalo st y w) &&& (rel_1 fm x y v w u)))
  and rel_1 fm x y v w u = (((fm === (conj x y)) &&& (ando v w u)) ||| ((fm === (disj x y)) &&& (oro v w u)))
  in        (((evalo x0 x1 !!true)))
