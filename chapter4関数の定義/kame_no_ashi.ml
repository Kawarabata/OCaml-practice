(* 目的:亀の数から足の数を計算する *)
(* kame_no_ashi : int -> int *)
let kame_no_ashi number_of_kame = number_of_kame * 4

(* テスト *)
let test 1 = kame_no_ashi 2 = 8
let test 2 = kame_no_ashi 5 = 20
let test 3 = kame_no_ashi 13 = 52