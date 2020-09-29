open GT
open OCanren
open OCanren.Std
open Helper

let topLevel y1 y2 = let rec sorto z1 z2 = (fresh (fB fA) ((((z1 === fA) &&& (z2 === fB)) &&& (sorto__1 fA fB)))) and sorto__1 z1 z2 = (((z1 === (Std.List.nil ())) &&& (z2 === (Std.List.nil ()))) ||| (fresh (fE fD fC fB fA) (((((z1 === (Std.(%) (fA) (fB))) &&& (z2 === (Std.(%) (fC) (fD)))) &&& (sorto__1 fE fD)) &&& (smallesto__2 fA fB fC fE))))) and smallesto__2 z1 z2 z3 z4 = ((fresh (fA) (((((z1 === fA) &&& (z2 === (Std.List.nil ()))) &&& (z3 === fA)) &&& (z4 === (Std.List.nil ()))))) ||| (fresh (fF fE fD fC fB fA) ((((((z1 === fA) &&& (z2 === (Std.(%) (fB) (fC)))) &&& (z3 === fD)) &&& (z4 === (Std.(%) (fE) (fF)))) &&& (minmaxo_conj__3 fD fA fE fB fC fF))))) and minmaxo_conj__3 z1 z2 z3 z4 z5 z6 = ((((fresh (fD fC fB fA) ((((((((z1 === (Std.Nat.zero)) &&& (z2 === (Std.Nat.zero))) &&& (z3 === fA)) &&& (z4 === fB)) &&& (z5 === fC)) &&& (z6 === fD)) &&& (smallesto__2 fB fC fA fD)))) ||| (fresh (fE fD fC fB fA) (((((((((z1 === (Std.Nat.succ (fA))) &&& (z2 === (Std.Nat.succ (fA)))) &&& (z3 === (Std.Nat.succ (fB)))) &&& (z4 === fC)) &&& (z5 === fD)) &&& (z6 === fE)) &&& (leo__5 fA fB)) &&& (smallesto__2 fC fD ((Std.Nat.succ (fB))) fE))))) ||| (fresh (fD fC fB fA) ((((((((z1 === (Std.Nat.zero)) &&& (z2 === (Std.Nat.succ (fA)))) &&& (z3 === (Std.Nat.succ (fA)))) &&& (z4 === fB)) &&& (z5 === fC)) &&& (z6 === fD)) &&& (smallesto__2 fB fC ((Std.Nat.zero)) fD))))) ||| (fresh (fE fD fC fB fA) (((((((((z1 === (Std.Nat.succ (fA))) &&& (z2 === (Std.Nat.succ ((Std.Nat.succ (fB)))))) &&& (z3 === (Std.Nat.succ ((Std.Nat.succ (fB)))))) &&& (z4 === fC)) &&& (z5 === fD)) &&& (z6 === fE)) &&& (gto__4 fA fB)) &&& (smallesto__2 fC fD ((Std.Nat.succ (fA))) fE))))) and gto__4 z1 z2 = ((fresh (fA) (((z1 === (Std.Nat.zero)) &&& (z2 === fA)))) ||| (fresh (fB fA) ((((z1 === (Std.Nat.succ (fA))) &&& (z2 === (Std.Nat.succ (fB)))) &&& (gto__4 fA fB))))) and leo__5 z1 z2 = ((fresh (fA) (((z1 === (Std.Nat.zero)) &&& (z2 === fA)))) ||| (fresh (fB fA) ((((z1 === (Std.Nat.succ (fA))) &&& (z2 === (Std.Nat.succ (fB)))) &&& (leo__5 fA fB))))) in       (sorto y1 y2)
