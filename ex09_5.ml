(* 目的：整数のリストの中の偶数の要素のみを含むリストを返す *)
(* even : int list -> int list *)
let rec even lst = match lst with
    [] -> []
  | first :: rest ->
      if first mod 2 = 0
      then first :: even rest
      else even rest

(* テスト *)
let test1 = even [] = []
let test2 = even [3] = []
let test3 = even [4] = [4]
let test4 = even [3; 7] = []
let test5 = even [5; 2; 7; 8] = [2; 8]
