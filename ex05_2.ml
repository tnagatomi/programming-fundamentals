(* 目的：受け取った時間 t が午前か午後かを返す *)
(*  : int -> string *)
let jikan t =
  if t < 12 then "午前" else "午後"

(* テスト *)
let test1 = jikan 0 = "午前"
let test2 = jikan 1 = "午前"
let test3 = jikan 11 = "午前"
let test4 = jikan 12 = "午後"
let test5 = jikan 13 = "午後"
let test6 = jikan 23 = "午後"
