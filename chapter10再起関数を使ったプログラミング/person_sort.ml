(* 人の情報(名前、身長、体重、誕生日、血液型)を表す型 *)
type person_t = {
  name: string;
  m: float;
  kg: float;
  birthday: int;
  blood: string;
}


(* 目的：person_t型のデータのリストとperson_tを受け取ったらそれを名前が昇順となる位置に挿入したリストを返す *)
(* person_insert : person_t list -> person_t list *)
let rec person_insert lst person = match lst with
  [] -> [person]
  | ({name=n; m=m; kg=k; birthday=bi; blood=b} as first) :: rest
      -> if person.name < n then person :: first :: rest
                            else first :: (person_insert rest person)


(* 目的：person_t型のデータのリストを受け取ったらそれを名前の順に整列したリストを返す *)
(* person_sort : person_t list -> person_t list *)
let rec person_sort lst = match lst with
  [] -> []
  | first :: rest -> person_insert (person_sort rest) first


let person1 = {
  name = "あまみや";
  m = 1.70;
  kg = 65.0;
  birthday = 0823;
  blood = "A"
}

let person2 = {
  name = "いのうえ";
  m = 1.70;
  kg = 65.0;
  birthday = 0922;
  blood = "B"
}

let person3 = {
  name = "うじはら";
  m = 1.70;
  kg = 65.0;
  birthday = 0822;
  blood = "A"
}

let person4 = {
  name = "えがしら";
  m = 1.70;
  kg = 65.0;
  birthday = 0923;
  blood = "A"
}

let lst1 = [person2]
let lst2 = [person2; person1]
let lst3 = [person4; person2; person3; person1]

(* テスト *)
let a = person_insert lst2 person4
let test0 = person_insert lst2 person4 = [person2; person1; person4]
let test1 = person_sort [] = []
let test2 = person_sort lst1 = lst1
let test3 = person_sort lst2 = [person1; person2]
let test4 = person_sort lst3 = [person1; person2; person3; person4]

