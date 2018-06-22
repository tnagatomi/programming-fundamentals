(* 目的：x 座標と y 座標の組みで表された平面座標を受け取ったら x 軸について対象な点の座標を返す *)
(* taisho_x : float * float -> float * float *)
let taisho_x pair = match pair with
  (x, y) -> (x, -. y)

(* テスト *)
let test1 = taisho_x (0., 0.) = (0., 0.)
let test2 = taisho_x (1.2, 2.3) = (1.2, -2.3)
let test3 = taisho_x (2.5, -3.6) = (2.5, 3.6)
