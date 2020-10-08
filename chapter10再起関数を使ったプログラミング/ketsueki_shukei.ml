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
let rec ketsueki_shukei lst = match lst with
  [] -> (0, 0, 0, 0)
  | {name=n; m=m; kg=k; birthday=b; blood=bl} :: rest ->
    let (a, b, ab, o) = ketsueki_shukei rest in
    if bl = "A"       then (a+1, b, ab, o)
    else if bl = "B"  then (a, b+1, ab, o)
    else if bl = "AB" then (a, b, ab+1, o)
    else (a, b, ab, o+1)

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
let test1 = ketsueki_shukei lst1 = (0, 0, 0, 0)
let test2 = ketsueki_shukei lst2 = (0, 1, 0, 0)
let test3 = ketsueki_shukei lst3 = (2, 0, 0, 0)
let test4 = ketsueki_shukei lst4 = (2, 1, 0, 1)
