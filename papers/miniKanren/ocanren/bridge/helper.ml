open GT
open OCanren

type 'a0 gpeano =
  | O
  | S of 'a0
module For_gpeano = (Fmap)(struct let rec fmap fa0 = function | O -> O | S a0 -> S (fa0 a0)
                                  type 'a0 t = 'a0 gpeano end)
let rec o () = inj (For_gpeano.distrib O)
and s x__0 = inj (For_gpeano.distrib (S x__0))
type person =
  | A
  | B
  | C
  | D
let a () = !! A
let b () = !! B
let c () = !! C
let d () = !! D
type 'a0 gstep =
  | One of 'a0
  | Two of 'a0 * 'a0
module For_gstep = (Fmap)(struct let rec fmap fa0 = function | One a0 -> One (fa0 a0) | Two (a0_0, a0_1) -> Two ((fa0 a0_0), (fa0 a0_1))
                                 type 'a0 t = 'a0 gstep end)
let rec one x__0 = inj (For_gstep.distrib (One x__0))
and two x__0 x__1 = inj (For_gstep.distrib (Two (x__0, x__1)))
type 'a0 gstate =
  | St of 'a0 * 'a0 * 'a0 * 'a0 * 'a0
module For_gstate =
  (Fmap)(struct let rec fmap fa0 = function | St (a0_0, a0_1, a0_2, a0_3, a0_4) -> St ((fa0 a0_0), (fa0 a0_1), (fa0 a0_2), (fa0 a0_3), (fa0 a0_4))
                type 'a0 t = 'a0 gstate end)
let rec st x__0 x__1 x__2 x__3 x__4 = inj (For_gstate.distrib (St (x__0, x__1, x__2, x__3, x__4)))