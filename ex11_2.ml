(* 目的：本掲載の数列a_nの第n項を求める *)
(* a: int -> int *)
let rec a n =
  if n = 0 then 3
           else 2 * a (n - 1) - 1

(* テスト *)
let test1 = a 0 = 3
let test2 = a 1 = 5
let test3 = a 2 = 9
let test4 = a 3 = 17
