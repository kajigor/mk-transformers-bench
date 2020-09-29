open GT
open OCanren
open OCanren.Std
open Helper

let topLevel y1 y2 =
  let rec tlBigBridge z1 z2 = fresh (fB fA) (z1 === fA &&& (z2 === fB) &&& tlBigBridge__1 fA fB)
  and tlBigBridge__1 z1 z2 =
    fresh (fB fA)
      (z1 === Std.( % ) (one fA) fB &&& (z2 === s (s (s (s (s (s (s (s (s (s (s (s (s (s (s (s (s (o ())))))))))))))))))) &&& checkPerson_conj__2 fA fB)
    ||| fresh (fC fB fA)
          ( z1
          === Std.( % ) (two fA fB) fC
          &&& (z2 === s (s (s (s (s (s (s (s (s (s (s (s (s (s (s (s (s (o ()))))))))))))))))))
          &&& checkPerson__3 fA
          &&& checkPerson_conj__4 fB fA fC (s (s (s (s (s (s (o ()))))))) )
  and checkPerson_conj__2 z1 z2 =
    fresh (fB fA) (z1 === a () &&& (z2 === Std.( % ) (one (a ())) (Std.( % ) fA fB)) &&& checkStep_conj__80 fA fB)
    ||| fresh (fB fA) (z1 === b () &&& (z2 === Std.( % ) (one (b ())) (Std.( % ) fA fB)) &&& checkStep_conj__60 fA fB)
    ||| fresh (fB fA) (z1 === c () &&& (z2 === Std.( % ) (one (c ())) (Std.( % ) fA fB)) &&& checkStep_conj__31 fA fB)
  and checkPerson__3 z1 = z1 === a () ||| (z1 === b ()) ||| (z1 === c ()) ||| (z1 === d ())
  and checkPerson_conj__4 z1 z2 z3 z4 =
    fresh (fC fB fA)
      ( z1 === b () &&& (z2 === a ())
      &&& (z3 === Std.( % ) fA fB)
      &&& (z4 === fC)
      &&& checkStep_conj__11 !!false !!false !!false !!true !!true fA fB (s (s (s (s (s (s (s (s (s fC))))))))) )
    ||| fresh (fC fB fA)
          ( z1 === c () &&& (z2 === a ())
          &&& (z3 === Std.( % ) fA fB)
          &&& (z4 === fC)
          &&& checkStep_conj__11 !!false !!false !!true !!false !!true fA fB (s (s (s (s (s (s fC)))))) )
    ||| fresh (fC fB fA) (z1 === d () &&& (z2 === fA) &&& (z3 === fB) &&& (z4 === fC) &&& grForPerson_conj__6 fA fB fC)
  and grForPerson_conj__6 z1 z2 z3 =
    fresh (fC fB fA) (z1 === a () &&& (z2 === Std.( % ) fA fB) &&& (z3 === fC) &&& checkStep_conj__11 !!false !!false !!true !!true !!false fA fB (s fC))
    ||| fresh (fC fB fA) (z1 === b () &&& (z2 === Std.( % ) fA fB) &&& (z3 === fC) &&& checkStep_conj__11 !!false !!true !!false !!true !!false fA fB (s fC))
    ||| fresh (fC fB fA) (z1 === c () &&& (z2 === Std.( % ) fA fB) &&& (z3 === fC) &&& checkStep_conj__11 !!false !!true !!true !!false !!false fA fB (s fC))
  and getAnswer_0__10 z1 z2 z3 z4 z5 z6 z7 =
    fresh (fH fG fF fE fD fC fB fA)
      ( z1 === Std.( % ) fA fB &&& (z2 === fC) &&& (z3 === fD) &&& (z4 === fE) &&& (z5 === fF) &&& (z6 === fG) &&& (z7 === fH)
      &&& checkStep_conj__11 fC fD fE fF fG fA fB fH )
    ||| (z1 === Std.List.nil () &&& (z2 === !!false) &&& (z3 === !!false) &&& (z4 === !!false) &&& (z5 === !!false) &&& (z6 === !!false) &&& (z7 === o ()))
  and checkStep_conj__11 z1 z2 z3 z4 z5 z6 z7 z8 =
    fresh (fH fG fF fE fD fC fB fA)
      ( z1 === fA &&& (z2 === fB) &&& (z3 === fC) &&& (z4 === fD) &&& (z5 === fE)
      &&& (z6 === one fF)
      &&& (z7 === fG)
      &&& (z8 === s fH)
      &&& checkPerson_conj__13 fA fB fC fD fE fF fG fH )
    ||| fresh (fI fH fG fF fE fD fC fB fA)
          ( z1 === fA &&& (z2 === fB) &&& (z3 === fC) &&& (z4 === fD) &&& (z5 === fE)
          &&& (z6 === two fF fG)
          &&& (z7 === fH)
          &&& (z8 === s fI)
          &&& checkPerson_conj__14 fA fB fC fD fE fF fG fH fI )
  and checkPerson_conj__13 z1 z2 z3 z4 z5 z6 z7 z8 =
    fresh (fF fE fD fC fB fA)
      ( z1 === fA &&& (z2 === fA) &&& (z3 === fB) &&& (z4 === fC) &&& (z5 === fD) &&& (z6 === (a ())) &&& (z7 === fE) &&& (z8 === fF)
      &&& eqForBool_conj__23 fA fB fC fD fE fF )
    ||| fresh (fF fE fD fC fB fA)
          ( z1 === fA &&& (z2 === fB) &&& (z3 === fA) &&& (z4 === fC) &&& (z5 === fD) &&& (z6 === (b ())) &&& (z7 === fE)
          &&& (z8 === s fF)
          &&& eqForBool_conj__24 fA fB fC fD fE fF )
    ||| fresh (fF fE fD fC fB fA)
          ( z1 === fA &&& (z2 === fB) &&& (z3 === fC) &&& (z4 === fA) &&& (z5 === fD) &&& (z6 === (c ())) &&& (z7 === fE)
          &&& (z8 === s (s (s (s fF))))
          &&& eqForBool_conj__25 fA fB fC fD fE fF )
    ||| fresh (fF fE fD fC fB fA)
          ( z1 === fA &&& (z2 === fB) &&& (z3 === fC) &&& (z4 === fD) &&& (z5 === fA) &&& (z6 === (d ())) &&& (z7 === fE)
          &&& (z8 === s (s (s (s (s (s (s (s (s fF)))))))))
          &&& eqForBool_conj__26 fA fB fC fD fE fF )
  and checkPerson_conj__14 z1 z2 z3 z4 z5 z6 z7 z8 z9 =
    fresh (fG fF fE fD fC fB fA)
      ( z1 === fA &&& (z2 === fA) &&& (z3 === fB) &&& (z4 === fC) &&& (z5 === fD) &&& (z6 === (a ())) &&& (z7 === fE) &&& (z8 === fF) &&& (z9 === fG)
      &&& eqForBool_conj__15 fA fB fC fD fE fF fG )
    ||| fresh (fE fD fC fB fA)
          ( z1 === fA &&& (z2 === fB) &&& (z3 === fA) &&& (z4 === fC) &&& (z5 === fA) &&& (z6 === (b ())) &&& (z7 === (d ())) &&& (z8 === fD)
          &&& (z9 === s (s (s (s (s (s (s (s (s fE)))))))))
          &&& eqForBool_conj__16 fA fB fC fD fE )
    ||| fresh (fE fD fC fB fA)
          ( z1 === fA &&& (z2 === fB) &&& (z3 === fC) &&& (z4 === fA) &&& (z5 === fA) &&& (z6 === (c ())) &&& (z7 === (d ())) &&& (z8 === fD)
          &&& (z9 === s (s (s (s (s (s (s (s (s fE)))))))))
          &&& eqForBool_conj__17 fA fB fC fD fE )
  and eqForBool_conj__15 z1 z2 z3 z4 z5 z6 z7 =
    fresh (fF fE fD fC fB fA)
      ( z1 === !!false &&& (z2 === fA) &&& (z3 === fB) &&& (z4 === fC) &&& (z5 === fD) &&& (z6 === fE) &&& (z7 === fF)
      &&& checkPerson_conj__19 fA fB fC fD fE fF )
    ||| fresh (fF fE fD fC fB fA)
          ( z1 === !!true &&& (z2 === fA) &&& (z3 === fB) &&& (z4 === fC) &&& (z5 === fD) &&& (z6 === fE) &&& (z7 === fF)
          &&& checkPerson_conj__20 fA fB fC fD fE fF )
  and eqForBool_conj__16 z1 z2 z3 z4 z5 =
    fresh (fE fD fC fB fA)
      (z1 === !!false &&& (z2 === fA) &&& (z3 === fB) &&& (z4 === Std.( % ) fC fD) &&& (z5 === fE) &&& checkStep_conj__11 !!true fA !!true fB !!true fC fD fE)
    ||| fresh (fD fC fB fA)
          (z1 === !!true &&& (z2 === fA) &&& (z3 === fB) &&& (z4 === fC) &&& (z5 === fD) &&& getAnswer_0__10 fC !!false fA !!false fB !!false fD)
  and eqForBool_conj__17 z1 z2 z3 z4 z5 =
    fresh (fE fD fC fB fA)
      (z1 === !!false &&& (z2 === fA) &&& (z3 === fB) &&& (z4 === Std.( % ) fC fD) &&& (z5 === fE) &&& checkStep_conj__11 !!true fA fB !!true !!true fC fD fE)
    ||| fresh (fD fC fB fA)
          (z1 === !!true &&& (z2 === fA) &&& (z3 === fB) &&& (z4 === fC) &&& (z5 === fD) &&& getAnswer_0__10 fC !!false fA fB !!false !!false fD)
  and checkPerson_conj__19 z1 z2 z3 z4 z5 z6 =
    fresh (fE fD fC fB fA)
      ( z1 === !!false &&& (z2 === fA) &&& (z3 === fB) &&& (z4 === (b ()))
      &&& (z5 === Std.( % ) fC fD)
      &&& (z6 === s fE)
      &&& checkStep_conj__11 !!true !!true !!true fA fB fC fD fE )
    ||| fresh (fE fD fC fB fA)
          ( z1 === fA &&& (z2 === !!false) &&& (z3 === fB) &&& (z4 === (c ()))
          &&& (z5 === Std.( % ) fC fD)
          &&& (z6 === s (s (s (s fE))))
          &&& checkStep_conj__11 !!true !!true fA !!true fB fC fD fE )
    ||| fresh (fE fD fC fB fA)
          ( z1 === fA &&& (z2 === fB) &&& (z3 === !!false) &&& (z4 === (d ()))
          &&& (z5 === Std.( % ) fC fD)
          &&& (z6 === s (s (s (s (s (s (s (s (s fE)))))))))
          &&& checkStep_conj__11 !!true !!true fA fB !!true fC fD fE )
  and checkPerson_conj__20 z1 z2 z3 z4 z5 z6 =
    fresh (fD fC fB fA)
      (z1 === !!true &&& (z2 === fA) &&& (z3 === fB) &&& (z4 === (b ())) &&& (z5 === fC) &&& (z6 === s fD) &&& getAnswer_0__10 fC !!false !!false !!false fA fB fD)
    ||| fresh (fD fC fB fA)
          ( z1 === fA &&& (z2 === !!true) &&& (z3 === fB) &&& (z4 === (c ())) &&& (z5 === fC)
          &&& (z6 === s (s (s (s fD))))
          &&& getAnswer_0__10 fC !!false !!false fA !!false fB fD )
    ||| fresh (fD fC fB fA)
          ( z1 === fA &&& (z2 === fB) &&& (z3 === !!true) &&& (z4 === (d ())) &&& (z5 === fC)
          &&& (z6 === s (s (s (s (s (s (s (s (s fD)))))))))
          &&& getAnswer_0__10 fC !!false !!false fA fB !!false fD )
  and eqForBool_conj__23 z1 z2 z3 z4 z5 z6 =
    fresh (fF fE fD fC fB fA)
      ( z1 === !!false &&& (z2 === fA) &&& (z3 === fB) &&& (z4 === fC)
      &&& (z5 === Std.( % ) fD fE)
      &&& (z6 === fF) &&& checkStep_conj__11 !!true !!true fA fB fC fD fE fF )
    ||| fresh (fE fD fC fB fA)
          (z1 === !!true &&& (z2 === fA) &&& (z3 === fB) &&& (z4 === fC) &&& (z5 === fD) &&& (z6 === fE) &&& getAnswer_0__10 fD !!false !!false fA fB fC fE)
  and eqForBool_conj__24 z1 z2 z3 z4 z5 z6 =
    fresh (fF fE fD fC fB fA)
      ( z1 === !!false &&& (z2 === fA) &&& (z3 === fB) &&& (z4 === fC)
      &&& (z5 === Std.( % ) fD fE)
      &&& (z6 === fF) &&& checkStep_conj__11 !!true fA !!true fB fC fD fE fF )
    ||| fresh (fE fD fC fB fA)
          (z1 === !!true &&& (z2 === fA) &&& (z3 === fB) &&& (z4 === fC) &&& (z5 === fD) &&& (z6 === fE) &&& getAnswer_0__10 fD !!false fA !!false fB fC fE)
  and eqForBool_conj__25 z1 z2 z3 z4 z5 z6 =
    fresh (fF fE fD fC fB fA)
      ( z1 === !!false &&& (z2 === fA) &&& (z3 === fB) &&& (z4 === fC)
      &&& (z5 === Std.( % ) fD fE)
      &&& (z6 === fF) &&& checkStep_conj__11 !!true fA fB !!true fC fD fE fF )
    ||| fresh (fE fD fC fB fA)
          (z1 === !!true &&& (z2 === fA) &&& (z3 === fB) &&& (z4 === fC) &&& (z5 === fD) &&& (z6 === fE) &&& getAnswer_0__10 fD !!false fA fB !!false fC fE)
  and eqForBool_conj__26 z1 z2 z3 z4 z5 z6 =
    fresh (fF fE fD fC fB fA)
      ( z1 === !!false &&& (z2 === fA) &&& (z3 === fB) &&& (z4 === fC)
      &&& (z5 === Std.( % ) fD fE)
      &&& (z6 === fF) &&& checkStep_conj__11 !!true fA fB fC !!true fD fE fF )
    ||| fresh (fE fD fC fB fA)
          (z1 === !!true &&& (z2 === fA) &&& (z3 === fB) &&& (z4 === fC) &&& (z5 === fD) &&& (z6 === fE) &&& getAnswer_0__10 fD !!false fA fB fC !!false fE)
  and checkStep_conj__31 z1 z2 =
    fresh (fB fA) (z1 === one fA &&& (z2 === fB) &&& checkPerson_conj__32 fA fB)
    ||| fresh (fC fB fA) (z1 === two fA fB &&& (z2 === fC) &&& checkPerson__3 fA &&& checkPerson_conj__33 fB fA fC (o ()))
  and checkPerson_conj__32 z1 z2 =
    fresh (fB fA) (z1 === (a ()) &&& (z2 === Std.( % ) (one (a ())) (Std.( % ) fA fB)) &&& checkStep_conj__51 fA fB)
    ||| fresh (fB fA) (z1 === (b ()) &&& (z2 === Std.( % ) (one (b ())) (Std.( % ) fA fB)) &&& checkStep_conj__41 fA fB)
  and checkPerson_conj__33 z1 z2 z3 z4 =
    fresh (fC fB fA)
      ( z1 === (b ()) &&& (z2 === (a ()))
      &&& (z3 === Std.( % ) fA fB)
      &&& (z4 === fC)
      &&& checkStep_conj__11 !!false !!false !!false !!true !!true fA fB (s (s (s (s (s fC))))) )
    ||| fresh (fC fB fA)
          (z1 === (c ()) &&& (z2 === (a ())) &&& (z3 === Std.( % ) fA fB) &&& (z4 === fC) &&& checkStep_conj__11 !!false !!false !!true !!false !!true fA fB (s (s fC)))
  and checkStep_conj__41 z1 z2 = fresh (fC fB fA) (z1 === two fA fB &&& (z2 === fC) &&& checkPerson__3 fA &&& checkPerson_conj__43 fB fA fC)
  and checkPerson_conj__43 z1 z2 z3 =
    fresh (fB fA) (z1 === (b ()) &&& (z2 === (a ())) &&& (z3 === Std.( % ) fA fB) &&& checkStep_conj__11 !!false !!false !!false !!true !!true fA fB (s (o ())))
  and checkStep_conj__51 z1 z2 =
    fresh (fB fA) (z1 === one fA &&& (z2 === fB) &&& checkPerson_conj__52 fA fB)
    ||| fresh (fC fB fA) (z1 === two fA fB &&& (z2 === fC) &&& checkPerson__3 fA &&& checkPerson_conj__53 fB fA fC)
  and checkPerson_conj__52 z1 z2 = fresh (fB fA) (z1 === (a ()) &&& (z2 === Std.( % ) (one (a ())) (Std.( % ) fA fB)) &&& checkStep_conj__41 fA fB)
  and checkPerson_conj__53 z1 z2 z3 =
    fresh (fB fA) (z1 === (b ()) &&& (z2 === (a ())) &&& (z3 === Std.( % ) fA fB) &&& checkStep_conj__11 !!false !!false !!false !!true !!true fA fB (s (s (s (o ())))))
    ||| fresh (fB fA) (z1 === (c ()) &&& (z2 === (a ())) &&& (z3 === Std.( % ) fA fB) &&& checkStep_conj__11 !!false !!false !!true !!false !!true fA fB (o ()))
  and checkStep_conj__60 z1 z2 =
    fresh (fB fA) (z1 === one fA &&& (z2 === fB) &&& checkPerson_conj__61 fA fB)
    ||| fresh (fC fB fA) (z1 === two fA fB &&& (z2 === fC) &&& checkPerson__3 fA &&& checkPerson_conj__4 fB fA fC (s (s (o ()))))
  and checkPerson_conj__61 z1 z2 =
    fresh (fB fA) (z1 === (a ()) &&& (z2 === Std.( % ) (one (a ())) (Std.( % ) fA fB)) &&& checkStep_conj__74 fA fB)
    ||| fresh (fB fA) (z1 === (b ()) &&& (z2 === Std.( % ) (one (b ())) (Std.( % ) fA fB)) &&& checkStep_conj__66 fA fB)
    ||| fresh (fB fA) (z1 === (c ()) &&& (z2 === Std.( % ) (one (c ())) (Std.( % ) fA fB)) &&& checkStep_conj__41 fA fB)
  and checkStep_conj__66 z1 z2 =
    fresh (fB fA) (z1 === one fA &&& (z2 === fB) &&& checkPerson_conj__67 fA fB)
    ||| fresh (fC fB fA) (z1 === two fA fB &&& (z2 === fC) &&& checkPerson__3 fA &&& checkPerson_conj__33 fB fA fC (s (s (o ()))))
  and checkPerson_conj__67 z1 z2 =
    fresh (fB fA) (z1 === (a ()) &&& (z2 === Std.( % ) (one (a ())) (Std.( % ) fA fB)) &&& checkStep_conj__31 fA fB)
    ||| fresh (fB fA) (z1 === (b ()) &&& (z2 === Std.( % ) (one (b ())) (Std.( % ) fA fB)) &&& checkStep_conj__51 fA fB)
  and checkStep_conj__74 z1 z2 =
    fresh (fB fA) (z1 === one fA &&& (z2 === fB) &&& checkPerson_conj__75 fA fB)
    ||| fresh (fC fB fA) (z1 === two fA fB &&& (z2 === fC) &&& checkPerson__3 fA &&& checkPerson_conj__4 fB fA fC (o ()))
  and checkPerson_conj__75 z1 z2 =
    fresh (fB fA) (z1 === (a ()) &&& (z2 === Std.( % ) (one (a ())) (Std.( % ) fA fB)) &&& checkStep_conj__66 fA fB)
    ||| fresh (fB fA) (z1 === (b ()) &&& (z2 === Std.( % ) (one (b ())) (Std.( % ) fA fB)) &&& checkStep_conj__31 fA fB)
  and checkStep_conj__80 z1 z2 =
    fresh (fB fA) (z1 === one fA &&& (z2 === fB) &&& checkPerson_conj__81 fA fB)
    ||| fresh (fC fB fA) (z1 === two fA fB &&& (z2 === fC) &&& checkPerson__3 fA &&& checkPerson_conj__4 fB fA fC (s (s (s (s (o ()))))))
  and checkPerson_conj__81 z1 z2 =
    fresh (fB fA) (z1 === (a ()) &&& (z2 === Std.( % ) (one (a ())) (Std.( % ) fA fB)) &&& checkStep_conj__60 fA fB)
    ||| fresh (fB fA) (z1 === (b ()) &&& (z2 === Std.( % ) (one (b ())) (Std.( % ) fA fB)) &&& checkStep_conj__74 fA fB)
    ||| fresh (fB fA) (z1 === (c ()) &&& (z2 === Std.( % ) (one (c ())) (Std.( % ) fA fB)) &&& checkStep_conj__51 fA fB)
  in
  tlBigBridge y1 y2
