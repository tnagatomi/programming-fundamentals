#use "ex08_3.ml"

(* person_t list 型のデータの例 *)
let lst1 = []
let lst2 = [person1]
let lst3 = [person2]
let lst4 = [person1; person2; person3]
let lst5 = [person2; person1; person1]

(* 目的：血液型がA型の人の数を返す *)
(* count_ketsueki_A : person_t list -> int *)
let count_ketsueki_A lst = 0

(* テスト *)
let test1 = count_ketsueki_A lst1 = 0
let test2 = count_ketsueki_A lst2 = 1
let test3 = count_ketsueki_A lst3 = 0
let test4 = count_ketsueki_A lst4 = 1
let test3 = count_ketsueki_A lst5 = 2
