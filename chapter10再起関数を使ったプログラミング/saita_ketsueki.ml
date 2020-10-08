(* 人の情報(名前、身長、体重、誕生日、血液型)を表す型 *)
type person_t = {
  name: string;
  m: float;
  kg: float;
  birthday: int;
  blood: string;
}

(* 目的：person_t型のデータのリストを受け取ったら各血液型の人が何人いるかをくみにして返す *)
(* ketsueki_shukei: person_t list -> int * int * int * int *)
(* let rec ketsueki_shukei lst = match lst with
  [] -> (0, 0, 0, 0)
  | {name=n; m=m; kg=k; birthday=b; blood=bl} :: rest ->
    let (a, b, ab, o) = ketsueki_shukei rest in
    if bl = "A"       then (a+1, b, ab, o)
    else if bl = "B"  then (a, b+1, ab, o)
    else if bl = "AB" then (a, b, ab+1, o)
    else (a, b, ab, o+1) *)

(* 目的：person_t型のデータのリストを受け取ったら各血液型のうち最も人数の多かった血液型を返す *)
(* saita_ketsueki: person_t list -> string *)
let rec saita_ketsueki lst = match lst with
  [] -> "なし"
  | {name=n; m=m; kg=k; birthday=b; blood=bl} :: rest ->
    let (a, b, ab, o) = saita_ketsueki rest in "A"

let person1 = {
  name = "田中";
  m = 1.70;
  kg = 65.0;
  birthday = 0101;
  blood = "A"
}

let person2 = {
  name = "田中";
  m = 1.70;
  kg = 65.0;
  birthday = 0101;
  blood = "B"
}

let person3 = {
  name = "田中";
  m = 1.70;
  kg = 65.0;
  birthday = 0101;
  blood = "A"
}

let person4 = {
  name = "田中";
  m = 1.70;
  kg = 65.0;
  birthday = 0101;
  blood = "O"
}

let lst1 = []
let lst2 = [person2]
let lst3 = [person1; person3]
let lst4 = [person1; person2; person3; person4]

(* テスト *)
let test1 = saita_ketsueki lst1 = "なし"
let test2 = saita_ketsueki lst2 = "B"
let test3 = saita_ketsueki lst3 = "A"
let test4 = saita_ketsueki lst4 = "A"
