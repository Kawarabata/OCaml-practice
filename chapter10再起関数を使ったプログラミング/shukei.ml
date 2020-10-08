(* 学生一人分のデータ(名前、点数、成績)を表す型 *)
type gakusei_t = {
  namae: string;   (* 名前 *)
  tensuu: int;     (* 点数 *)
  seiseki: string; (* 成績 *)
}

(* 目的：gakusei_t型リストのうち各成績の人数を集計する *)
(* shukei: shukei list -> int * int * int * int *)
let rec shukei lst = match lst with
  []  -> (0, 0, 0, 0)
  | { namae = n; tensuu = t; seiseki = s } :: rest ->
    let (a, b, c, d) = shukei rest in
      if s = "A" then (a+1, b, c, d)
      else if s = "B" then (a, b+1, c, d)
      else if s = "C" then (a, b, c+1, d)
      else (a, b, c, d+1)

(* テスト *)
let lst1 = []
let lst2 = [{ namae = "asai"; tensuu = 75; seiseki = "B" }]
let lst3 = [{ namae = "asai"; tensuu = 75; seiseki = "B" }; { namae = "asai"; tensuu = 80; seiseki = "A" }]
let lst4 = [{ namae = "asai"; tensuu = 75; seiseki = "B" }; { namae = "asai"; tensuu = 80; seiseki = "A" }; { namae = "asai"; tensuu = 90; seiseki = "A" }]

let test1 = shukei [] = (0, 0, 0, 0)
let test2 = shukei lst2 = (0, 1, 0, 0)
let test3 = shukei lst3 = (1, 1, 0, 0)
let test4 = shukei lst4 = (2, 1, 0, 0)
