(* 目的: 鶴と亀の数から足の数を計算する *)
(* tsurukame_no_ashi : int -> int -> int *)
let tsurukame_no_ashi number_of_tsuru number_of_kame = number_of_tsuru * 2 + number_of_kame * 4

(* テスト *)
let test1 = tsurukame_no_ashi 1 1 = 6
let test1 = tsurukame_no_ashi 2 4 = 20
let test1 = tsurukame_no_ashi 3 5 = 26
