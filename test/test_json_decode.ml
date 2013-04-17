open OUnit
open Baselib.Std.Either
module J = Json_ocaml.Json
module T = Json_ocaml.Json.Type

let test_empty_object _ =
  let o = J.decode "{}" in
  match o with
  | Right(T.Object([])) -> ()
  | _ -> assert_failure "can not decode"
;;

let test_empty_array _ =
  let o = J.decode "[]" in
  match o with
  | Right(T.Array([])) -> ()
  | _ -> assert_failure "can not decode"
;;

let test_one_array _ =
  let o = J.decode "[\"hoge\"]" in
  match o with
  | Right(T.Array([T.String("hoge")])) -> ()
  | Left(e) -> assert_failure e
  | _ -> assert_failure "invalid pattern"
;;

let test_empty_string _ =
  let o = J.decode "\"\"" in
  match o with
  | Right(T.String("")) -> ()
  | _ -> assert_failure "can not decode"
;;

let test_normal_string _ =
  let o = J.decode "\"foobar\"" in
  match o with
  | Right(T.String("foobar")) -> ()
  | _ -> assert_failure "can not decode"
;;


let test_one_digit _ =
  let o = J.decode "1" in
  begin
    match o with
    | Right(T.Number(1.0)) -> ()
    | _ -> assert_failure "can not decode"
  end;
  let o = J.decode "100" in
  begin
    match o with
    | Right(T.Number(100.0)) -> ()
    | _ -> assert_failure "can not decode"
  end;
;;

let suite = "JSON decode" >::: [
  "empty object" >:: test_empty_object;
  "empty array" >:: test_empty_array;
  "one string array" >:: test_one_array;
  "empty string" >:: test_empty_string;
  "normal string" >:: test_normal_string;
  "one digit" >:: test_one_digit;
]

let _ =
  run_test_tt_main suite
