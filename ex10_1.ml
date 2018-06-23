(* 目的：整数をあらかじめ照準に並んでいるリストの昇順となる位置に挿入したリストを返す *)
(* insert: int list -> int -> int list *)
let insert lst n = []

(* テスト *)
let test1 = insert [] 1 = [1]
let test2 = insert [1] 4 = [1; 4]
let test3 = insert [1; 3; 4; 7; 8] 5 = [1; 3; 4; 5; 7; 8]
