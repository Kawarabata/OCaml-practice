(* 目的:鶴の数から足の本数を計算する *)
(* tsuru_no_ashi : int -> int  *)
let tsuru_no_ashi number_of_tsuru = number_of_tsuru * 2

(* テスト *)
let test1 = tsuru_no_ashi 2 = 4
let test2 = tsuru_no_ashi 5 = 10
let test4 = tsuru_no_ashi 13 = 26
