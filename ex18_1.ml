#use "ex08_3.ml"

(* 目的：lst に含まれる最初の A 型の人を返す *) 
(* first_A : person_t list -> person_t option *) 
let rec first_A person_list = match person_list with
    [] -> None
  | first :: rest -> match first with 
      {name = n; shincho = s; taiju = t; tsuki = ts; hi = h; ketsueki = k} ->
        if k = "A" then Some (first) else first_A rest

(* person_t list 型のデータの例 *) 
let lst1 = [person1; person2; person3] 
let lst2 = [person3; person2; person1] 
 
(* テスト *) 
let test1 = first_A [] = None 
let test2 = first_A lst1 = Some (person1) 
let test3 = first_A lst2 = Some (person1) 
