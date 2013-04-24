open OUnit
open Baselib.Std.Either
module J = Json_ocaml.Json
module T = Json_ocaml.Json.Type

let assert_left m = function
  | Left(_) -> ()
  | Right(_) -> assert_failure m

let assert_right m = function
  | Left(_) -> assert_failure m
  | Right(_) -> ()

let assert_right_with m f = function
  | Left(_) -> assert_failure m
  | Right(r) -> f r
;;

let test_empty_object _ =
  let o = J.decode "{}" in
  assert_right "can not decode" o
;;

let test_one_object _ =
  let o = J.decode "{\"test\":100}" in
  assert_right_with "can not decode array having one element" (
    function
    | T.Object([("test", T.Number(100.0))]) -> ()
    | _ -> assert_failure "invalid pattern"
  ) o
;;

let test_multi_pair_in_an_object _ =
  let o = J.decode "{\"test\":100,\"test2\":true,\"foo\":null}" in
  assert_right_with "can not decode object having some elements" (
    function
    | T.Object([("test", T.Number(100.0));
                ("test2", T.Bool(true));
                ("foo", T.Null);
               ]) -> ()
    | _ -> assert_failure "invalid pattern"
  ) o
;;

let test_empty_array _ =
  let o = J.decode "[]" in
  assert_right "can not decode empty array" o
;;

let test_one_array _ =
  let o = J.decode "[\"hoge\"]" in
  assert_right_with "can not decode array having one element" (
    function
    | T.Array([T.String("hoge")]) -> ()
    | _ -> assert_failure "invalid pattern"
  ) o
;;

let test_multi_array _ =
  let o = J.decode "[\"hoge\",false,null,100.4, {\"test3\":\"value\"}]" in
  assert_right_with "can not decode array having one element" (
    function
    | T.Array([T.String("hoge"); T.Bool(false);
               T.Null; T.Number(100.4); T.Object([("test3", T.String("value"))])
              ]) -> ()
    | _ -> assert_failure "invalid pattern"
  ) o
;;


let test_empty_string _ =
  let o = J.decode "\"\"" in
  assert_right_with "can not decode array having one element" (
    function
    | T.String("") -> ()
    | _ -> assert_failure "invalid pattern"
  ) o
;;

let test_normal_string _ =
  let o = J.decode "\"foobar\"" in
  assert_right_with "can not decode array having one element" (
    function
    | T.String("foobar") -> ()
    | _ -> assert_failure "invalid pattern"
  ) o
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
  let o = J.decode "00" in
  begin
    match o with
    | Right(T.Number(0.0)) -> ()
    | _ -> assert_failure "can not decode"
  end;
;;

let test_float_digit _ =
  let assert_float json f =
    match json with
    | Right(T.Number(s)) -> assert_equal s f ~msg:("float " ^ (string_of_float s))
    | _ -> assert_failure "can not decode" in
  let o = J.decode "1e104" in
  assert_float o 1e104;
  let o = J.decode "1.04032" in
  assert_float o 1.04032;
  let o = J.decode "0.14e10" in
  assert_float o 1.4e9;
  let o = J.decode "-1.5" in
  assert_float o (-1.5);
;;

let test_constants _ =
  let o = J.decode "null" in
  begin
    match o with
    | Right(T.Null) -> ()
    | _ -> assert_failure "can not decode"
  end;
  let o = J.decode "true" in
  begin
    match o with
    | Right(T.Bool(true)) -> ()
    | _ -> assert_failure "can not decode"
  end;
  let o = J.decode "false" in
  begin
    match o with
    | Right(T.Bool(false)) -> ()
    | _ -> assert_failure "can not decode"
  end
;;

let suite = "JSON decode" >::: [
  "empty object" >:: test_empty_object;
  "one object" >:: test_one_object;
  "multi pair in object" >:: test_multi_pair_in_an_object;
  "empty array" >:: test_empty_array;
  "one string array" >:: test_one_array;
  "containing multi values in array" >:: test_multi_array;
  "empty string" >:: test_empty_string;
  "normal string" >:: test_normal_string;
  "one digit" >:: test_one_digit;
  "floats" >:: test_float_digit;
  "constants" >:: test_constants;
]

let _ =
  run_test_tt_main suite
