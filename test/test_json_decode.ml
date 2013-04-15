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

let suite = "JSON decode" >::: [
  "empty object" >:: test_empty_object;
  "empty array" >:: test_empty_array;
]

let _ =
  run_test_tt_main suite
