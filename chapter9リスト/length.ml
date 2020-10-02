(* 目的：整数のリストを受け取ったら、そのリストの長さを返す *)
(* length : int list -> int *)

let rec length lst = match lst with
  [] -> 0
  | first :: rest -> 1 + length rest

(* テスト *)
let test1 = length [] = 0
let test2 = length [1; 2; 3] = 3
let test1 = length [4; 6; 0; 9; 1; 2; 5; 8; 7] = 9
