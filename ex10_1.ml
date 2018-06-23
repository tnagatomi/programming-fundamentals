(* 目的：整数を、昇順となる位置に挿入したリストを返す *)
(* insert: int list -> int -> int list *)
let insert lst n = []

(* テスト *)
let test1 = insert 1 [] = [1]
let test2 = insert 4 [1] = [1; 4]
let test3 = insert 4 [1; 2; 5] = [1; 2; 4; 5]
