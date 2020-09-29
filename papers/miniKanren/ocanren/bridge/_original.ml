open GT
open OCanren
open OCanren.Std
open Helper

let topLevel x0 x1 =
  let rec tlBigBridge a b = result b &&& getAnswer a (Option.some b)
  and result q0 = q0 === s (s (s (s (s (s (s (s (s (s (s (s (s (s (s (s (s (o ())))))))))))))))))
  and getAnswer answer q26 = fresh (q22) (start q22 &&& getAnswer' answer q22 q26)
  and start q1 = q1 === st !!true !!true !!true !!true !!true
  and getAnswer' answer state q3 =
    fresh (xs x)
      ( answer === Std.( % ) x xs
      &&& fresh (q5)
            ( checkStep state x q5
            &&& ( q5 === !!true
                &&& fresh (q7)
                      ( fresh (q13) (step state x q13 &&& getAnswer' xs q13 q7)
                      &&& ( q7 === Option.none ()
                          &&& (q3 === Option.none ())
                          ||| fresh (t1) (q7 === Option.some t1 &&& fresh (q9) (q3 === Option.some q9 &&& fresh (q11) (getTime x q11 &&& add q11 t1 q9))) ) )
                ||| (q5 === !!false &&& (q3 === Option.none ())) ) ) )
    ||| ( answer === Std.List.nil ()
        &&& fresh (q17)
              ( fresh (q20) (finish q20 &&& eqForState state q20 q17)
              &&& (q17 === !!true &&& (q3 === Option.some (o ())) ||| (q17 === !!false &&& (q3 === Option.none ()))) ) )
  and checkStep state step q66 =
    fresh (p) (step === one p &&& checkPerson state p q66)
    ||| fresh (q p)
          ( step === two p q
          &&& fresh (q68 q67)
                ( checkPerson state p q67
                &&& ( fresh (q74 q73)
                        (checkPerson state q q73 &&& (grForPerson p q q74 &&& (q73 === !!false &&& (q68 === !!false) ||| (q73 === !!true &&& (q68 === q74)))))
                    &&& (q67 === !!false &&& (q66 === !!false) ||| (q67 === !!true &&& (q66 === q68))) ) ) )
  and checkPerson state person q79 =
    fresh (d0 c0 b0 a0 l)
      ( state === st l a0 b0 c0 d0
      &&& ( person === a () &&& eqForBool a0 l q79
          ||| (person === b () &&& eqForBool b0 l q79 ||| (person === c () &&& eqForBool c0 l q79 ||| (person === d () &&& eqForBool d0 l q79))) ) )
  and eqForBool a b q109 =
    fresh (q108 q107)
      ( a === !!false &&& (q107 === !!false)
      ||| (a === !!true &&& (q107 === b))
      &&& ( fresh (q116)
              ( a === !!true &&& (q116 === !!true)
              ||| (a === !!false &&& (q116 === b))
              &&& (q116 === !!true &&& (q108 === !!false) ||| (q116 === !!false &&& (q108 === !!true))) )
          &&& (q107 === !!true &&& (q109 === !!true) ||| (q107 === !!false &&& (q109 === q108))) ) )
  (* and eqForBool a b q109 =
    fresh (q108 q107)
      ( a === !!false &&& (q107 === !!false)
      ||| (a === !!true &&& (q107 === b))
      &&& ( fresh (q116)
              ( a === !!true &&& (q116 === !!true)
              ||| (a === !!false &&& (q116 === b))
              &&& (q116 === !!true &&& (q108 === !!false) ||| (q116 === !!false &&& (q108 === !!true))) )
          &&& (q107 === !!true &&& (q109 === !!true) ||| (q107 === !!false &&& (q109 === q108))) ) ) *)
  and grForPerson x y q129 =
    x === a ()
    &&& (y === a () &&& (q129 === !!false) ||| (y === b () &&& (q129 === !!true) ||| (y === c () &&& (q129 === !!true) ||| (y === d () &&& (q129 === !!true)))))
    ||| ( x === b ()
        &&& (y === a () &&& (q129 === !!false) ||| (y === b () &&& (q129 === !!false) ||| (y === c () &&& (q129 === !!false) ||| (y === d () &&& (q129 === !!true)))))
        ||| ( x === c ()
            &&& (y === a () &&& (q129 === !!false) ||| (y === b () &&& (q129 === !!false) ||| (y === c () &&& (q129 === !!false) ||| (y === d () &&& (q129 === !!true)))))
            ||| (x === d () &&& (q129 === !!false)) ) )
  and finish q2 = q2 === st !!false !!false !!false !!false !!false
  and eqForState x y q81 =
    fresh (d1 c1 b1 a1 l1)
      ( x === st l1 a1 b1 c1 d1
      &&& fresh (d2 c2 b2 a2 l2)
            ( y === st l2 a2 b2 c2 d2
            &&& fresh (q84 q83)
                  ( eqForBool l1 l2 q83
                  &&& ( fresh (q90 q89)
                          ( eqForBool a1 a2 q89
                          &&& ( fresh (q96 q95)
                                  ( eqForBool b1 b2 q95
                                  &&& ( fresh (q102 q101)
                                          ( eqForBool c1 c2 q101
                                          &&& (eqForBool d1 d2 q102 &&& (q101 === !!false &&& (q96 === !!false) ||| (q101 === !!true &&& (q96 === q102)))) )
                                      &&& (q95 === !!false &&& (q90 === !!false) ||| (q95 === !!true &&& (q90 === q96))) ) )
                              &&& (q89 === !!false &&& (q84 === !!false) ||| (q89 === !!true &&& (q84 === q90))) ) )
                      &&& (q83 === !!false &&& (q81 === !!false) ||| (q83 === !!true &&& (q81 === q84))) ) ) ) )
  and add x y z = x === o () &&& (z === y) ||| fresh (z' x') (x === s x' &&& (z === s z' &&& add x' y z'))
  and step state step q36 =
    fresh (p) (step === one p &&& fresh (q37) (movePerson state p q37 &&& moveLight q37 q36))
    ||| fresh (q p) (step === two p q &&& fresh (q39) (fresh (q41) (movePerson state p q41 &&& movePerson q41 q q39) &&& moveLight q39 q36))
  and movePerson state person q43 =
    fresh (d0 c0 b0 a0 l)
      ( state === st l a0 b0 c0 d0
      &&& ( person === a ()
          &&& fresh (q45) (q43 === st l q45 b0 c0 d0 &&& (a0 === !!true &&& (q45 === !!false) ||| (a0 === !!false &&& (q45 === !!true))))
          ||| ( person === b ()
              &&& fresh (q49) (q43 === st l a0 q49 c0 d0 &&& (b0 === !!true &&& (q49 === !!false) ||| (b0 === !!false &&& (q49 === !!true))))
              ||| ( person === c ()
                  &&& fresh (q53) (q43 === st l a0 b0 q53 d0 &&& (c0 === !!true &&& (q53 === !!false) ||| (c0 === !!false &&& (q53 === !!true))))
                  ||| ( person === d ()
                      &&& fresh (q57) (q43 === st l a0 b0 c0 q57 &&& (d0 === !!true &&& (q57 === !!false) ||| (d0 === !!false &&& (q57 === !!true)))) ) ) ) ) )
  and moveLight state q61 =
    fresh (d0 c0 b0 a0 l)
      (state === st l a0 b0 c0 d0 &&& fresh (q62) (q61 === st q62 a0 b0 c0 d0 &&& (l === !!true &&& (q62 === !!false) ||| (l === !!false &&& (q62 === !!true)))))
  and getTime state q27 =
    fresh (p) (state === one p &&& times p q27) ||| fresh (q p) (state === two p q &&& fresh (q29 q28) (times p q28 &&& (times q q29 &&& max q28 q29 q27)))
  and times p q31 =
    p === a ()
    &&& (q31 === s (o ()))
    ||| ( p === b ()
        &&& (q31 === s (s (o ())))
        ||| (p === c () &&& (q31 === s (s (s (s (s (o ())))))) ||| (p === d () &&& (q31 === s (s (s (s (s (s (s (s (s (s (o ()))))))))))))) )
  and max a0 b0 q125 = fresh (q126) (greater a0 b0 q126 &&& (q126 === !!true &&& (a0 === q125) ||| (q126 === !!false &&& (b0 === q125))))
  and greater a0 b0 q146 =
    a0 === o () &&& (q146 === !!false) ||| fresh (x) (a0 === s x &&& (b0 === o () &&& (q146 === !!true) ||| fresh (y) (b0 === s y &&& greater x y q146)))
  in
  tlBigBridge x0 x1
