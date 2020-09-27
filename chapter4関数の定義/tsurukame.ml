(* 目的: 鶴と亀の数の合計と足の数の合計から鶴の数を計算する *)
(* 全部ツルだと仮定した時の足の数から、足りない分が亀の数 *)
(* tsurukame : int -> int -> int *)
(* let tsurukame head_number feet_sum = head_number - (feet_sum - head_number * 2) / 2 *)
let tsurukame head_number feet_sum = head_number * 2 - feet_sum / 2

(* テスト *)
let test1 = tsurukame 3 10 = 1
let test2 = tsurukame 5 14 = 3
let test3 = tsurukame 8 22 = 5