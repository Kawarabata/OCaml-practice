(* 人の情報(名前、身長、体重、誕生日、血液型)を表す型 *)
type person_t = {
  name: string;
  m: float;
  kg: float;
  birthday: int;
  blood: string;
}

(* 目的：person_t型のデータのリストを受け取ったら血液型がA型の人の数を返す *)
(* count_ketsueki_A: person_t list -> int *)

let rec count_ketsueki_A lst = match lst with
  [] -> 0
  | { name = n; m = m; kg = k; birthday = b; blood = bl } :: rest
    -> if bl = "A" then 1 + count_ketsueki_A rest
       else count_ketsueki_A rest

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

let lst1 = []
let lst2 = [person2]
let lst3 = [person1; person2]
let lst4 = [person1; person3]

(* テスト *)
let test1 = count_ketsueki_A lst1 = 0
let test2 = count_ketsueki_A lst2 = 0
let test3 = count_ketsueki_A lst3 = 1
let test4 = count_ketsueki_A lst4 = 2