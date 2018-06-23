(* 目的：整数のリストを昇順にして返す *)
(* ins_sort: int list -> int list *)
let ins_sort lst = []

(* テスト *)
let test1 = ins_sort [] = []
let test2 = ins_sort [2] = [2]
let test3 = ins_sort [1; 3; 4] = [1; 3; 4]
let test4 = ins_sort [5; 3; 8; 1; 7; 4] = [1; 3; 4; 5; 7; 8]
