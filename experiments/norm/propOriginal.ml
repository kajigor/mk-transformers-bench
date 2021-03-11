open GT
open OCanren
open OCanren.Std
open Helper

let topLevel x0 x1 =
  let rec ando x y b = (((x === !!true) &&& ((y === !!true) &&& (b === !!true))) ||| (((x === !!false) &&& ((y === !!true) &&& (b === !!false))) ||| (((x === !!true) &&& ((y === !!false) &&& (b === !!false))) ||| ((x === !!false) &&& ((y === !!false) &&& (b === !!false))))))
  and oro x y b = (((x === !!true) &&& ((y === !!true) &&& (b === !!true))) ||| (((x === !!false) &&& ((y === !!true) &&& (b === !!true))) ||| (((x === !!true) &&& ((y === !!false) &&& (b === !!true))) ||| ((x === !!false) &&& ((y === !!false) &&& (b === !!false))))))
  and noto x b = (((x === !!true) &&& (b === !!false)) ||| ((x === !!false) &&& (b === !!true)))
  and evalo st fm u = (fresh (x y v w z) ((((fm === (conj x y)) &&& ((evalo st x v) &&& ((evalo st y w) &&& (ando v w u)))) ||| (((fm === (disj x y)) &&& ((evalo st x v) &&& ((evalo st y w) &&& (oro v w u)))) ||| (((fm === (neg x)) &&& ((evalo st x v) &&& (noto v u))) ||| ((fm === (var z)) &&& (elemo z st u)))))))
  and elemo n s v = (fresh (h t n') ((((n === Nat.zero) &&& ((s === (h % t)) &&& (v === h))) ||| ((n === (Nat.succ n')) &&& ((s === (h % t)) &&& (elemo n' t v))))))
  in      (((evalo x0 x1 !!true)))
