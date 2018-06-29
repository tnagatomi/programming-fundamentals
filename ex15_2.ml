(* 目的：2つの自然数の最大公約数を返す *)
(* gcd: int -> int -> int *)
let rec gcd m n =
  if n = 0 then m else gcd n (m mod n)

(* テスト *) 
let test1 = gcd 7 5 = 1 
let test2 = gcd 30 18 = 6 
let test3 = gcd 36 24 = 12 
