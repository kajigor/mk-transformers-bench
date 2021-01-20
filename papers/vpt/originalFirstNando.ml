open GT
open OCanren
open OCanren.Std
open Helper

let topLevel x0 x1 =
  let rec evalo st fm u = (fresh (x y v w z) ((((fm === (conj x y)) &&& ((ando v w u) &&& ((evalo st x v) &&& (evalo st y w)))) ||| (((fm === (disj x y)) &&& ((oro v w u) &&& ((evalo st x v) &&& (evalo st y w)))) ||| (((fm === (neg x)) &&& ((noto v u) &&& (evalo st x v))) ||| ((fm === (var z)) &&& (elemo z st u)))))))
  and ando a b c = (fresh (ab) (((nando a b ab) &&& (nando ab ab c))))
  and nando a b c = (((a === !!false) &&& ((b === !!false) &&& (c === !!true))) ||| (((a === !!false) &&& ((b === !!true) &&& (c === !!true))) ||| (((a === !!true) &&& ((b === !!false) &&& (c === !!true))) ||| ((a === !!true) &&& ((b === !!true) &&& (c === !!false))))))
  and oro a b c = (fresh (aa bb) (((nando a a aa) &&& ((nando b b bb) &&& (nando aa bb c)))))
  and noto a na = (nando a a na)
  and elemo n s v = (fresh (h t n') ((((n === Nat.zero) &&& ((s === (h % t)) &&& (v === h))) ||| ((n === (Nat.succ n')) &&& ((s === (h % t)) &&& (elemo n' t v))))))
  in         (((evalo x0 x1 !!true)))
