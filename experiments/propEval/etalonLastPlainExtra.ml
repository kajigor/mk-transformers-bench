open GT
open OCanren
open OCanren.Std
open Helper

let topLevel y1 y2 = 
  let rec evaloT z1 z2 = ((fresh (fY fX fSt) (((z1 === fSt) &&& ((z2 === (conj fX fY)) &&& ((evaloT fSt fX) &&& ((evaloT fSt fY) &&& (stub Nat.zero Nat.zero))))))) ||| ((fresh (fY fX fSt) (((z1 === fSt) &&& ((z2 === (disj fX fY)) &&& ((evaloT fSt fX) &&& ((evaloT fSt fY) &&& (stub Nat.zero Nat.zero))))))) ||| ((fresh (fY fX fSt) (((z1 === fSt) &&& ((z2 === (disj fX fY)) &&& ((evaloT fSt fX) &&& ((evaloF fSt fY) &&& (stub Nat.zero Nat.zero))))))) ||| ((fresh (fY fX fSt) (((z1 === fSt) &&& ((z2 === (disj fX fY)) &&& ((evaloF fSt fX) &&& ((evaloT fSt fY) &&& (stub Nat.zero Nat.zero))))))) ||| ((fresh (fX fSt) (((z1 === fSt) &&& ((z2 === (neg fX)) &&& ((evaloF fSt fX) &&& (stub Nat.zero Nat.zero)))))) ||| (fresh (fZ fSt) (((z1 === fSt) &&& ((z2 === (var fZ)) &&& (elemoT fSt fZ)))))))))) 
  and evaloF z1 z2 = ((fresh (fY fX fSt) (((z1 === fSt) &&& ((z2 === (conj fX fY)) &&& ((evaloF fSt fX) &&& ((evaloF fSt fY) &&& (stub Nat.zero Nat.zero))))))) ||| ((fresh (fY fX fSt) (((z1 === fSt) &&& ((z2 === (conj fX fY)) &&& ((evaloT fSt fX) &&& ((evaloF fSt fY) &&& (stub Nat.zero Nat.zero))))))) ||| ((fresh (fY fX fSt) (((z1 === fSt) &&& ((z2 === (conj fX fY)) &&& ((evaloF fSt fX) &&& ((evaloT fSt fY) &&& (stub Nat.zero Nat.zero))))))) ||| ((fresh (fY fX fSt) (((z1 === fSt) &&& ((z2 === (disj fX fY)) &&& ((evaloF fSt fX) &&& ((evaloF fSt fY) &&& (stub Nat.zero Nat.zero))))))) ||| ((fresh (fX fSt) (((z1 === fSt) &&& ((z2 === (neg fX)) &&& ((evaloT fSt fX) &&& (stub Nat.zero Nat.zero)))))) ||| (fresh (fZ fSt) (((z1 === fSt) &&& ((z2 === (var fZ)) &&& (elemoF fSt fZ)))))))))) 
  and stub z1 z2 = (fresh (fX) (((z1 === fX) &&& (z2 === fX)))) 
  and elemoT z1 z2 = ((fresh (fQ1) (((z1 === (!!true % fQ1)) &&& (z2 === Nat.zero)))) ||| (fresh (fQ2 fQ1 fQ3) (((z1 === (fQ3 % fQ1)) &&& ((z2 === (Nat.succ fQ2)) &&& (elemoT fQ1 fQ2)))))) 
  and elemoF z1 z2 = ((fresh (fQ1) (((z1 === (!!false % fQ1)) &&& (z2 === Nat.zero)))) ||| (fresh (fQ2 fQ1 fQ3) (((z1 === (fQ3 % fQ1)) &&& ((z2 === (Nat.succ fQ2)) &&& (elemoF fQ1 fQ2)))))) 
  in      (evaloT y1 y2)
