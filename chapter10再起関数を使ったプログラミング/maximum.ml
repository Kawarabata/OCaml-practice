(* 学生一人分のデータ(名前、点数、成績)を表す型 *)
type gakusei_t = {
  namae: string;   (* 名前 *)
  tensuu: int;     (* 点数 *)
  seiseki: string; (* 成績 *)
}

(* 目的：gakusei_t型のリストを受け取ったらその中から最高得点を取った人のレコードを返す *)
(* gakusei_max: gakusei_t list -> gakusei_t *)
let rec gakusei_max lst = match lst with
  [] -> { namae = ""; tensuu = 0; seiseki = "" }
  | first :: rest ->
    let max_rest = gakusei_max rest in
      if first.tensuu > (gakusei_max rest).tensuu
        then first
        else gakusei_max rest

(* テスト *)
let lst1 = []
let lst2 = [{ namae = "asai"; tensuu = 75; seiseki = "B" }]
let lst3 = [{ namae = "asai"; tensuu = 75; seiseki = "B" }; { namae = "asai"; tensuu = 80; seiseki = "A" }]
let lst4 = [{ namae = "asai"; tensuu = 75; seiseki = "B" }; { namae = "asai"; tensuu = 80; seiseki = "A" }; { namae = "asai"; tensuu = 90; seiseki = "A" }]

let test1 = gakusei_max lst2 = { namae = "asai"; tensuu = 75; seiseki = "B" }
let test2 = gakusei_max lst3 = { namae = "asai"; tensuu = 80; seiseki = "A" }
let test3 = gakusei_max lst4 = { namae = "asai"; tensuu = 90; seiseki = "A" }
