(* 人の情報(名前、身長、体重、誕生日、血液型)を表す型 *)
type person_t = {
  name: string;
  m: float;
  kg: float;
  birthday: string;
  blood: string;
}

(* 目的：人の情報person_tを受け取り血液型を表示する *)
(* ketsueki_hyoji : person_t -> string *)
let ketsueki_hyoji person = match person with
  { name = n; m = m; kg = k; birthday = b; blood = bl } -> n^"さんの血液型は"^bl^"型です"

let person1 = {
  name = "田中";
  m = 1.70;
  kg = 65.0;
  birthday = "1月1日";
  blood = "A"
}

(* テスト *)
let test1 = ketsueki_hyoji person1 = "田中さんの血液型はA型です"