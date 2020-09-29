(* x, yの平面座標を受け取ったらx軸について対称な点の座標を返す *)
(* taisho_x : int * int -> int * int *)

let taisho_x pair = match pair with
  (x, y) -> (x, -y)

(* テスト *)
let test1 = taisho_x (2, 3) = (2, -3)
