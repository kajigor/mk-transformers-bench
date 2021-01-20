open GT
open OCanren
open OCanren.Std
open Helper

let topLevel x0 x1 =
  let rec evalo st fm u = (fresh (x y v w z) ((((fm === (conj x y)) &&& ((ando v w u) &&& ((evalo st x v) &&& (evalo st y w)))) ||| (((fm === (disj x y)) &&& ((oro v w u) &&& ((evalo st x v) &&& (evalo st y w)))) ||| (((fm === (neg x)) &&& ((noto v u) &&& (evalo st x v))) ||| ((fm === (var z)) &&& (elemo z st u)))))))
  and ando x y v = (((x === !!true) &&& ((y === !!true) &&& (v === !!true))) ||| (((x === !!false) &&& ((y === !!true) &&& (v === !!false))) ||| (((x === !!true) &&& ((y === !!false) &&& (v === !!false))) ||| ((x === !!false) &&& ((y === !!false) &&& (v === !!false))))))
  and oro x y v = (((x === !!true) &&& ((y === !!true) &&& (v === !!true))) ||| (((x === !!false) &&& ((y === !!true) &&& (v === !!true))) ||| (((x === !!true) &&& ((y === !!false) &&& (v === !!true))) ||| ((x === !!false) &&& ((y === !!false) &&& (v === !!false))))))
  and noto x y = (((x === !!true) &&& (y === !!false)) ||| ((x === !!false) &&& (y === !!true)))
  and elemo n s v = (fresh (h t n') ((((n === Nat.zero) &&& ((s === (h % t)) &&& (v === h))) ||| ((n === (Nat.succ n')) &&& ((s === (h % t)) &&& (elemo n' t v))))))
  in      (((evalo x0 x1 !!true)))
