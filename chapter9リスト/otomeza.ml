(* 人の情報(名前、身長、体重、誕生日、血液型)を表す型 *)
type person_t = {
  name: string;
  m: float;
  kg: float;
  birthday: int;
  blood: string;
}

(* 目的：person_t型のデータのリストを受け取ったら乙女座の人の名前のみからなるリストを返す *)
(* otomeza: person_t list -> string list *)

let rec otomeza lst = match lst with
  [] -> []
  | { name = n; m = m; kg = k; birthday = b; blood = bl } :: rest
    -> if b >= 0823 && b <= 0922 then n::otomeza rest
                                 else otomeza rest

let person1 = {
  name = "早乙女";
  m = 1.70;
  kg = 65.0;
  birthday = 0823;
  blood = "A"
}

let person2 = {
  name = "乙葉";
  m = 1.70;
  kg = 65.0;
  birthday = 0922;
  blood = "B"
}

let person3 = {
  name = "山田";
  m = 1.70;
  kg = 65.0;
  birthday = 0822;
  blood = "A"
}

let person4 = {
  name = "田中";
  m = 1.70;
  kg = 65.0;
  birthday = 0923;
  blood = "A"
}

let lst1 = []
let lst2 = [person2]
let lst3 = [person1; person2]
let lst4 = [person1; person3]

(* テスト *)
let test1 = otomeza lst1 = []
let test2 = otomeza lst2 = ["乙葉"]
let test3 = otomeza lst3 = ["早乙女"; "乙葉"]
let test4 = otomeza lst4 = ["早乙女"]
