(* 学生一人分のデータ(名前、点数、成績)を表す型 *)
type gakusei_t = {
  namae: string;   (* 名前 *)
  tensuu: int;     (* 点数 *)
  seiseki: string; (* 成績 *)
}

(* 目的：gakusei_t型のリストとgakusei_tを受け取ったら、tensuuで昇順になる位置に挿入する *)
let rec gakusei_insert lst gakusei = match lst with
  [] -> [gakusei]
  | ({ namae = n; tensuu = t; seiseki = s } as first) :: rest
      -> if gakusei.tensuu > t then gakusei :: first :: rest
                               else first :: (gakusei_insert rest gakusei)

(* 目的：gakusei_t型のリストを受け取ったら、それをtensuuフィールドの順に整列したリストを返す *)
(* gakusei_sort : gakusei_t list -> gakusei_t list *)
let rec gakusei_sort lst = match lst with
  [] -> []
  | first :: rest -> gakusei_insert (gakusei_sort rest) first

let lst1 = []
let lst2 = [{ namae = "asai"; tensuu = 75; seiseki = "B" }]
let lst3 = [{ namae = "asai"; tensuu = 75; seiseki = "B" }; { namae = "asai"; tensuu = 80; seiseki = "A" }]
let lst4 = [{ namae = "asai"; tensuu = 75; seiseki = "B" }; { namae = "asai"; tensuu = 80; seiseki = "A" }; { namae = "asai"; tensuu = 90; seiseki = "A" }]

(* テスト *)
let test0 = gakusei_insert lst2 { namae = "asai"; tensuu = 80; seiseki = "A" } = [{ namae = "asai"; tensuu = 80; seiseki = "A" }; { namae = "asai"; tensuu = 75; seiseki = "B" }]
let test1 = gakusei_sort lst1 = []
let test2 = gakusei_sort lst2 = lst2
let test3 = gakusei_sort lst3 = [{ namae = "asai"; tensuu = 80; seiseki = "A" }; { namae = "asai"; tensuu = 75; seiseki = "B" }]
let test4 = gakusei_sort lst4 = [{ namae = "asai"; tensuu = 90; seiseki = "A" }; { namae = "asai"; tensuu = 80; seiseki = "A" }; { namae = "asai"; tensuu = 75; seiseki = "B" }]

