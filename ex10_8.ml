(* 人に関する情報を格納するレコード *) 
type person_t = { 
  name : string;	(* 名前 *) 
  shincho : float;	(* 身長 *) 
  taiju : float;	(* 体重 *) 
  tsuki : int;		(* 誕生月 *) 
  hi : int;		(* 誕生日 *) 
  ketsueki : string;	(* 血液型 *) 
} 
 
let person1 = 
  {name = "浅井"; 
   shincho = 1.72; 
   taiju = 58.5; 
   tsuki = 9; 
   hi = 17; 
   ketsueki = "A" 
} 
 
let person2 = { 
  name = "宮原"; 
  shincho = 1.63; 
  taiju = 55.0; 
  tsuki = 6; 
  hi = 30; 
  ketsueki = "B" 
} 
 
let person3 = { 
  name = "中村"; 
  shincho = 1.68; 
  taiju = 63.0; 
  tsuki = 6; 
  hi = 6; 
  ketsueki = "O" 
} 

(* person_t list 型のデータの例 *) 
let lst1 = [] 
let lst2 = [person1] 
let lst3 = [person2] 
let lst4 = [person1; person2; person3] 
let lst5 = [person2; person1; person1] 

(* 目的：人のリスト lst の各血液型の人数を組にして返す *)
let rec ketsueki_shukei lst = match lst with
    [] -> (0, 0, 0, 0)
  | {name=n; shincho=s; taiju=tj; tsuki=tk; hi=h; ketsueki=k} :: rest ->
      let (a, o, b, ab) = ketsueki_shukei rest in
        if k = "A" then (a + 1, o, b, ab)
        else if k = "O" then (a, o + 1, b, ab)
        else if k = "B" then (a, o, b + 1, ab)
        else (a, o, b, ab + 1)

(* 目的：人のリスト lst のうち最も人数の多い血液型を返す *)
let saita_ketsueki lst =
  let (a, o, b, ab) = ketsueki_shukei lst in
    let max_ketsueki = max a (max o (max b ab)) in
      if max_ketsueki = a then "A"
      else if max_ketsueki = o then "O"
      else if max_ketsueki = b then "B"
      else "AB"

(* テスト *)
let test1 = saita_ketsueki lst1 = "A"
let test2 = saita_ketsueki lst2 = "A"
let test3 = saita_ketsueki lst3 = "B"
let test4 = saita_ketsueki lst4 = "A"
let test5 = saita_ketsueki lst5 = "A"