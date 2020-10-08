(* 目的：予め昇順に並んでいる整数のリストlstと整数nを受け取ったら、lstを前から順に未定期、昇順となる一にnを挿入したリストを返す *)
(* insert : int list n -> int list *)
let rec insert lst n = match lst with
  [] -> [n]
  | first :: rest -> if n < first then n :: first :: rest
                                  else first :: (insert rest n)

(* 目的；整数のリストを受け取ったらそれを照準に整列したリストを返す *)
(* ins_sort : int list -> int list *)
let rec ins_sort lst = match lst with
  [] -> []
  | first :: rest -> insert (ins_sort rest) first

(* テスト *)
let test1 = insert [] 1 = [1]
let test2 = insert [1; 3; 4; 7; 8] 5 = [1; 3; 4; 5; 7; 8]

let test3 = ins_sort [5; 3; 8; 1; 7; 4] = [1; 3; 4; 5; 7; 8]
