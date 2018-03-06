(* 目的：x座標とy座標の組で表された表面座標をふたつ受け取ったらその中点の座標を返す *)
(* chuten : float * float -> float * float -> float * float *)
let chuten zahyo1 zahyo2 = match zahyo1 with
  (x1, y1) -> match zahyo2 with
    (x2, y2) -> ((x1 +. x2) /. 2.0, (y1 +. y2) /. 2.0)

(* テスト *)
let test1 = chuten (0.0, 0.0) (0.0, 0.0) = (0.0, 0.0)
let test2 = chuten (0.0, 0.0) (1.0, 2.0) = (0.5, 1.0) 
let test3 = chuten (2.3, 5.1) (7.6, 1.7) = (4.95, 3.4) 
let test4 = chuten (-3.8, -2.4) (3.4, -1.2) = (-0.2, -1.8) 
