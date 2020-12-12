open OCanren
open GT
open Benchmark

let iter_length n r f =
  List.iter f
  @@ RStream.take ~n:n
  @@ r (fun q -> q)

let reify_num g = g#reify Std.Nat.reify

let show_num t = (show(Std.Nat.logic)) @@ t

let num_to_string g = show_num (reify_num g)

let run_length n textRepr r =
  Printf.printf "\n------------------------------\n%s\n\n" textRepr;
  List.iter (fun list -> Printf.printf "%s\n" (num_to_string list)) @@
            RStream.take ~n:n @@ r (fun p -> p)


let run_time n text r =
  let t = Sys.time() in
  let fx = RStream.take ~n:n @@ r (fun fm -> fm) in
  Printf.printf "%s\t%fs\n" text (Sys.time() -. t)

let run_length' n textRepr r =
  Printf.printf "\n------------------------------\n%s\n\n" textRepr;
  List.iter (fun (unifs, list) -> Printf.printf "%d %s\n" unifs (num_to_string list))
  @@ RStream.take ~n:n
  @@ r (fun p -> p)
