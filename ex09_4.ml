(* int list は 
     - []              空リスト、あるいは 
     - first :: rest   最初の要素が first で残りのリストが rest 
                       （rest が自己参照のケース） 
   という形 *) 

(* 目的：受け取ったリスト lst の長さを返す *)
(* length : int lst -> int *)
let length lst = 0

(* テスト *)
let test1 = length [] = 0
let test2 = length [2] = 1
let test3 = length [1; 3] = 2
let test4 = length [1; 2; 3; 4; 5] = 5
