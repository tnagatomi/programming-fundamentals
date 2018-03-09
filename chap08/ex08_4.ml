(* 各人のデータ（名前、身長、体重、誕生月、誕生日、血液型）を表す型 *)
type person_t = {
  name : string;        (* 名前 *)
  height: float;        (* 身長 *)
  weight: float;        (* 体重 *)
  birth_month : int;    (* 誕生日の月 *)
  birth_day : int;      (* 誕生日の日 *)
  blood_type : string;  (* 血液型 *)
}

(* 目的：人のデータ person を受け取り「○○さんの血液型は△△型です」を返す *)
(* ketsueki_hyoji : person_t -> string *)
let ketsueki_hyoji person = match person with
  {name = n; height = h; weight = w; birth_month = bm; birth_day = bd; blood_type = bt} ->
    ""

let test1 = ketsueki_hyoji {name="John"; height=182.0; weight=75.0; birth_month=1; birth_day=1; blood_type="A"}
              = "Johnさんの血液型はA型です"
let test1 = ketsueki_hyoji {name="Steve"; height=185.0; weight=73.0; birth_month=2; birth_day=3; blood_type="B"}
              = "Steveさんの血液型はB型です"
let test1 = ketsueki_hyoji {name="Bill"; height=179.0; weight=69.0; birth_month=4; birth_day=15; blood_type="O"}
              = "Billさんの血液型はO型です"
