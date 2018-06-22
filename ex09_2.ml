#use "ex08_3.ml"

let a = {
  name = "a";
  height = 182;
  weight = 85;
  birthday = "1985/07/03";
  blood_type = "A";
}

let b = {
  name = "b";
  height = 182;
  weight = 85;
  birthday = "1985/07/04";
  blood_type = "B";
}

let c = {
  name = "c";
  height = 182;
  weight = 85;
  birthday = "1985/07/05";
  blood_type = "O";
}

let people = a :: b :: c :: []
