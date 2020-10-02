(* 学生一人分のデータ(名前、点数、成績)を表す型 *)
type gakusei_t = {
  namae: string;   (* 名前 *)
  tensuu: int;     (* 点数 *)
  seiseki: string; (* 成績 *)
}

(* gakusei_t listは
  - []             空リスト、あるいは
  - first :: rest  最初の要素がfirstで残りのリストがrest(firstがgakusei_t型、restが自己参照のケース)
という形 *)

(* 目的：学生リストlstのうち成績がAの人の数を返す *)
(* count_A : gakusei_t list -> int *  *)
let rec count_A lst = match lst with
  [] -> 0
  | { namae = n; tensuu = t; seiseki = s } :: rest
    -> if s = "A" then 1 + count_A rest
                  else count_A rest

(* gakusei_t list型のデータの例 *)
let lst1 = []
let lst2 = [{ namae = "asai"; tensuu = 75; seiseki = "B" }]
let lst3 = [{ namae = "asai"; tensuu = 75; seiseki = "B" };
            { namae = "asai"; tensuu = 80; seiseki = "A" }]
let lst4 = [{ namae = "asai"; tensuu = 75; seiseki = "B" };
            { namae = "asai"; tensuu = 80; seiseki = "A" };
            { namae = "asai"; tensuu = 80; seiseki = "A" }]

let test1 = count_A lst1 = 0
let test2 = count_A lst2 = 0
let test3 = count_A lst3 = 1
let test4 = count_A lst4 = 2
