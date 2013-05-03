open OUnit
open Baselib.Std.Either
module J = Json_ocaml.Json
module T = Json_ocaml.Json.Type

let test_empty_object _ =
  let json = T.Object([]) in
  assert_equal "{}" (J.encode json)
;;

let test_encode_object _ =
  let json = T.Object([("hoge",T.Bool(true))]) in
  assert_equal "{\"hoge\":true}" (J.encode json);
  let json = T.Object([("hoge",T.Array([T.Number(1.0)]))]) in
  assert_equal "{\"hoge\":[1.0]}" (J.encode json);
  let json = T.Object([("hoge",T.Object([("foobar", T.Number(100.0))]))]) in
  assert_equal "{\"hoge\":{\"foobar\":100.0}}" (J.encode json);
;;

let test_empty_array _ =
  let json = T.Array([]) in
  assert_equal "[]" (J.encode json)
;;

let test_encode_array _ =
  let json = T.Array([T.Bool(true);T.Null]) in
  assert_equal "[true,null]" (J.encode json);
  let json = T.Array([T.Array([T.Number(1.0)]);T.String("hoge")]) in
  assert_equal "[[1.0],\"hoge\"]" (J.encode json);
  let json = T.Array([T.Object([("hoge",T.Number(100.0))]);
                      T.Object([("foobar", T.Bool(false))])
                     ]) in
  assert_equal "[{\"hoge\":100.0},{\"foobar\":false}]" (J.encode json);
;;

let test_constants _ =
  let json = T.Bool(true) in
  assert_equal "true" (J.encode json);
  let json = T.Bool(false) in
  assert_equal "false" (J.encode json);
  let json = T.Null in
  assert_equal "null" (J.encode json)
;;

let test_encode_number _ =
  let json = T.Number(1.0) in
  assert_equal "1.0" (J.encode json);
  let json = T.Number(100.0) in
  assert_equal "100.0" (J.encode json);
  let json = T.Number(0.1234) in
  assert_equal "0.1234" (J.encode json);
;;

let test_encode_string _ =
  let json = T.String("") in
  assert_equal "\"\"" (J.encode json);
  let json = T.String("a") in
  assert_equal "\"a\"" (J.encode json);
  let json = T.String("foo bar") in
  assert_equal "\"foo bar\"" (J.encode json);
  let json = T.String("foo \b\t\r\nbar") in
  assert_equal "\"foo \b\t\r\nbar\"" (J.encode json);
  let json = T.String("日本語english混在テスト") in
  assert_equal "\"日本語english混在テスト\"" (J.encode json) ~msg:"english and japanese mixin test";
;;

let suite = "JSON encode" >::: [
  "empty object" >:: test_empty_object;
  "encode some objects" >:: test_encode_object;
  "empty array" >:: test_empty_array;
  "encode some arrays" >:: test_encode_array;
  "encode single types" >:: test_constants;
  "encode number" >:: test_encode_number;
  "encode string" >:: test_encode_string;
]

let _ =
  run_test_tt_main suite
