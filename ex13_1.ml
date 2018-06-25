(* あらかじめ ex08_3.ml を読み込んでおく必要あり *) 
#use "ex08_3.ml" 

(* person_t list 型のデータの例 *) 
let lst = [person1; person2; person3] 

(* 目的：person_t list から指定された血液型の人数を返す *)
(* count_ketsueki: person_t list string -> int *)
let rec count_ketsueki lst ketsueki0 = match lst with
    [] -> 0
  | { name = n; shincho = s; taiju = tj; tsuki = tk; hi = h; ketsueki = k } :: rest ->
      if k = ketsueki0 then 1 + count_ketsueki rest ketsueki0
                 else count_ketsueki rest ketsueki0

(* テスト *) 
let test1 = count_ketsueki [] "A" = 0 
let test2 = count_ketsueki lst "A" = 1 
let test3 = count_ketsueki lst "O" = 1 
let test4 = count_ketsueki lst "B" = 1 
let test5 = count_ketsueki lst "AB" = 0 
