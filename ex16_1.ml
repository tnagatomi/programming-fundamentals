(* 目的：整数のリストを受け取り、それまでの数の合計からなるリストを返す *)
(* sum_list: int list -> int list *)
let sum_list lst =
  (* 目的：整数のリストを受け取り、それまでの数の合計からなるリストを返す *)
  (* ここで sum0 はこれまでの数の合計 *)
  let rec hojo lst total0 = match lst with
      [] -> []
    | first :: rest -> total0 + first :: hojo rest (total0 + first)
  in hojo lst 0

(* テスト *)
let test1 = sum_list [] = []
let test2 = sum_list [3] = [3]
let test3 = sum_list [3; 2; 1; 4] = [3; 5; 6; 10]
