open OUnit
open Baselib.Std.Either
module J = Json_ocaml.Json
module T = Json_ocaml.Json.Type

let test_empty_object _ =
  let json = T.Object([]) in
  assert_equal "{}" (J.encode json)
;;

let test_empty_array _ =
  let json = T.Array([]) in
  assert_equal "[]" (J.encode json)
;;

let test_single_type _ =
  let json = T.Bool(true) in
  assert_equal "true" (J.encode json);
  let json = T.Bool(false) in
  assert_equal "false" (J.encode json);
  let json = T.Null in
  assert_equal "null" (J.encode json);
  let json = T.Number(1.45) in
  assert_equal "1.45" (J.encode json)
;;


let suite = "JSON encode" >::: [
  "empty object" >:: test_empty_object;
  "empty array" >:: test_empty_array;
  "encode single types" >:: test_single_type
]

let _ =
  run_test_tt_main suite
