open GT
open OCanren
open OCanren.Std
open Helper

let topLevel y1 y2 = 
  let rec evaloT z1 z2 = ((fresh (fY fX fSt) (((z1 === fSt) &&& ((z2 === (conj fX fY)) &&& ((evaloT fSt fX) &&& (evaloT fSt fY)))))) ||| ((fresh (fY fX fSt) (((z1 === fSt) &&& ((z2 === (disj fX fY)) &&& (evaloT fSt fX))))) ||| ((fresh (fY fX fSt) (((z1 === fSt) &&& ((z2 === (disj fX fY)) &&& (evaloT fSt fY))))) ||| ((fresh (fX fSt) (((z1 === fSt) &&& ((z2 === (neg fX)) &&& (evaloF fSt fX))))) ||| (fresh (fZ fSt) (((z1 === fSt) &&& ((z2 === (var fZ)) &&& (elemoT fSt fZ))))))))) 
  and evaloF z1 z2 = ((fresh (fY fX fSt) (((z1 === fSt) &&& ((z2 === (conj fX fY)) &&& (evaloF fSt fX))))) ||| ((fresh (fY fX fSt) (((z1 === fSt) &&& ((z2 === (conj fX fY)) &&& (evaloF fSt fY))))) ||| ((fresh (fY fX fSt) (((z1 === fSt) &&& ((z2 === (disj fX fY)) &&& ((evaloF fSt fX) &&& (evaloF fSt fY)))))) ||| ((fresh (fX fSt) (((z1 === fSt) &&& ((z2 === (neg fX)) &&& (evaloT fSt fX))))) ||| (fresh (fZ fSt) (((z1 === fSt) &&& ((z2 === (var fZ)) &&& (elemoF fSt fZ))))))))) 
  and elemoT z1 z2 = ((fresh (fQ1) (((z1 === (!!true % fQ1)) &&& (z2 === Nat.zero)))) ||| (fresh (fQ2 fQ1 fQ3) (((z1 === (fQ3 % fQ1)) &&& ((z2 === (Nat.succ fQ2)) &&& (elemoT fQ1 fQ2)))))) 
  and elemoF z1 z2 = ((fresh (fQ1) (((z1 === (!!false % fQ1)) &&& (z2 === Nat.zero)))) ||| (fresh (fQ2 fQ1 fQ3) (((z1 === (fQ3 % fQ1)) &&& ((z2 === (Nat.succ fQ2)) &&& (elemoF fQ1 fQ2)))))) 
  in     (evaloT y1 y2)
