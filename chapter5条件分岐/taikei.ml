(* 目的：身長(m)と体重(kg)を与えられたらBMI指数を計算する *)
(* bmi : float -> float -> float *)
let bmi m kg = kg /. m ** 2.0
(* 目的：BMIによって体型を返す *)
(* taikei : float -> string *)
let taikei bmi =
  if bmi < 18.5 then "やせ"
  else if bmi >= 18.5 && bmi < 25.0 then "標準"
  else if bmi >= 25.0 && bmi < 30.0 then "肥満"
  else "高度肥満"

(* テスト *)
(* bmi *)
let test1 = bmi 1.68 65.0 = 23.0300453514739267

(* taikei *)
let test2 = taikei 18.4 = "やせ"
let test3 = taikei 18.5 = "標準"
let test4 = taikei 24.9 = "標準"
let test5 = taikei 25.0 = "肥満"
let test6 = taikei 29.9 = "肥満"
let test4 = taikei 30.0 = "高度肥満"
