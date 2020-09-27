(* 時間を受け取ったら、午前か午後かを返す *)
(* jikan : int -> string *)
let jikan hour =
  if hour < 12 then "午前"
               else "午後"

(* テスト *)
let test1 = jikan 0 = "午前"
let test1 = jikan 11 = "午前"
let test1 = jikan 12 = "午後"
let test1 = jikan 23 = "午後"
