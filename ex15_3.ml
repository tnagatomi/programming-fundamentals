(* 目的：自然数 n 以下の素数をすべて求める *)
(* sieve: int list -> int list *)
let rec sieve list = match list with
    [] -> []
  | first :: rest -> first :: sieve (List.filter (fun x -> x mod first != 0) rest)

(* テスト *)
let test1 = sieve [2; 3; 4; 5; 6; 7; 8; 9; 10] = [2; 3; 5; 7]

(* 再起の停止性 *)
(* 再帰のたびにリストが小さくなっているのでいずれ空になり停止する *)

(* 目的：2 から受け取った自然数 n までの自然数のリストを返す *) 
(* two_to_n : int -> int list *) 
let two_to_n n = 
  let rec loop i = 
    if i <= n then i :: loop (i + 1) else [] in 
  loop 2 

let prime n = sieve (two_to_n n)

(* テスト *) 
let test2 = prime 10 = [2; 3; 5; 7] 
