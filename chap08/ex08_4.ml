(* 各人のデータ（名前、身長、体重、誕生月、誕生日、血液型）を表す型 *)
type person_t = {
  name : string;        (* 名前 *)
  height: float;        (* 身長 *)
  weight: float;        (* 体重 *)
  birth_month : int;    (* 誕生日の月 *)
  birth_day : int;      (* 誕生日の日 *)
  blood_type : string;  (* 血液型 *)
}

