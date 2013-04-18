type token =
  | STRING of (string)
  | LPAREN
  | LBRACE
  | RPAREN
  | RBRACE
  | COLON
  | COMMA
  | MINUS
  | PLUS
  | TRUE
  | FALSE
  | NULL
  | DOT
  | DOUBLE_QUOTE
  | EXP of (char)
  | DIGIT of (string)
  | CHAR of (char)
  | EOF
  | CONTROL_CHAR of (string)
  | NUMBER of (float)
  | BOOL of (bool)

open Parsing;;
let _ = parse_error;;
# 4 "json_parser.mly"
    let to_str = function
      | Json_type.String(s) -> "string:" ^ s
      | Json_type.Number(_) -> "number"
      | Json_type.Object(_) -> "object"
      | Json_type.Array(_) -> "array"
      | Json_type.Null -> "null"
      | Json_type.Bool(_) -> "bool"

  
# 37 "json_parser.ml"
let yytransl_const = [|
  258 (* LPAREN *);
  259 (* LBRACE *);
  260 (* RPAREN *);
  261 (* RBRACE *);
  262 (* COLON *);
  263 (* COMMA *);
  264 (* MINUS *);
  265 (* PLUS *);
  266 (* TRUE *);
  267 (* FALSE *);
  268 (* NULL *);
  269 (* DOT *);
  270 (* DOUBLE_QUOTE *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  257 (* STRING *);
  271 (* EXP *);
  272 (* DIGIT *);
  273 (* CHAR *);
  274 (* CONTROL_CHAR *);
  275 (* NUMBER *);
  276 (* BOOL *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\006\000\006\000\007\000\007\000\008\000\005\000\005\000\009\000\
\009\000\003\000\003\000\010\000\010\000\011\000\011\000\004\000\
\004\000\004\000\004\000\012\000\012\000\012\000\012\000\013\000\
\014\000\015\000\015\000\016\000\016\000\016\000\000\000"

let yylen = "\002\000\
\002\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\002\000\003\000\001\000\003\000\003\000\002\000\003\000\001\000\
\003\000\002\000\003\000\001\000\002\000\001\000\001\000\001\000\
\002\000\002\000\003\000\001\000\002\000\002\000\003\000\002\000\
\002\000\001\000\002\000\001\000\002\000\002\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\006\000\007\000\008\000\
\000\000\000\000\039\000\000\000\002\000\003\000\004\000\005\000\
\000\000\009\000\000\000\000\000\000\000\014\000\000\000\000\000\
\000\000\018\000\023\000\022\000\000\000\000\000\000\000\029\000\
\001\000\000\000\000\000\000\000\026\000\000\000\000\000\010\000\
\000\000\000\000\015\000\031\000\019\000\021\000\035\000\032\000\
\038\000\037\000\027\000\033\000\013\000\012\000\017\000"

let yydgoto = "\002\000\
\011\000\023\000\013\000\014\000\015\000\016\000\020\000\021\000\
\024\000\029\000\030\000\017\000\036\000\037\000\032\000\038\000"

let yysindex = "\002\000\
\023\255\000\000\254\254\008\255\249\254\000\000\000\000\000\000\
\246\254\007\255\000\000\027\000\000\000\000\000\000\000\000\000\
\015\255\000\000\026\255\039\255\040\255\000\000\041\255\045\255\
\007\255\000\000\000\000\000\000\037\255\253\254\007\255\000\000\
\000\000\007\255\032\255\031\255\000\000\007\255\023\255\000\000\
\038\255\023\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\
\021\000\000\000\000\000\000\000\049\255\000\000\050\255\000\000\
\005\000\000\000\000\000\000\000\000\000\042\255\017\000\000\000\
\000\000\000\000\043\255\029\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\255\255\003\000\000\000\000\000\000\000\013\000\000\000\
\015\000\028\000\000\000\000\000\000\000\024\000\011\000\000\000"

let yytablesize = 292
let yytable = "\012\000\
\028\000\018\000\001\000\026\000\030\000\019\000\027\000\028\000\
\025\000\003\000\004\000\009\000\022\000\027\000\028\000\005\000\
\034\000\006\000\007\000\008\000\024\000\009\000\031\000\010\000\
\003\000\004\000\033\000\034\000\025\000\035\000\005\000\039\000\
\006\000\007\000\008\000\044\000\009\000\053\000\010\000\049\000\
\050\000\047\000\040\000\019\000\048\000\035\000\041\000\042\000\
\052\000\043\000\045\000\009\000\011\000\054\000\016\000\020\000\
\055\000\046\000\036\000\051\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\028\000\028\000\000\000\028\000\
\030\000\030\000\000\000\030\000\000\000\028\000\000\000\028\000\
\000\000\030\000\000\000\030\000\034\000\034\000\000\000\034\000\
\024\000\024\000\000\000\024\000\000\000\034\000\000\000\034\000\
\025\000\025\000\000\000\025\000"

let yycheck = "\001\000\
\000\000\004\001\001\000\014\001\000\000\003\000\017\001\018\001\
\016\001\002\001\003\001\014\001\005\001\017\001\018\001\008\001\
\000\000\010\001\011\001\012\001\000\000\014\001\016\001\016\001\
\002\001\003\001\000\000\013\001\000\000\015\001\008\001\006\001\
\010\001\011\001\012\001\025\000\014\001\039\000\016\001\008\001\
\009\001\031\000\004\001\041\000\034\000\015\001\007\001\007\001\
\038\000\005\001\014\001\014\001\004\001\041\000\005\001\014\001\
\042\000\030\000\016\001\036\000\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\004\001\005\001\255\255\007\001\
\004\001\005\001\255\255\007\001\255\255\013\001\255\255\015\001\
\255\255\013\001\255\255\015\001\004\001\005\001\255\255\007\001\
\004\001\005\001\255\255\007\001\255\255\013\001\255\255\015\001\
\004\001\005\001\255\255\007\001"

let yynames_const = "\
  LPAREN\000\
  LBRACE\000\
  RPAREN\000\
  RBRACE\000\
  COLON\000\
  COMMA\000\
  MINUS\000\
  PLUS\000\
  TRUE\000\
  FALSE\000\
  NULL\000\
  DOT\000\
  DOUBLE_QUOTE\000\
  EOF\000\
  "

let yynames_block = "\
  STRING\000\
  EXP\000\
  DIGIT\000\
  CHAR\000\
  CONTROL_CHAR\000\
  NUMBER\000\
  BOOL\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'value) in
    Obj.repr(
# 29 "json_parser.mly"
            (_1)
# 227 "json_parser.ml"
               : Json_type.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'string) in
    Obj.repr(
# 33 "json_parser.mly"
             ( Json_type.String(_1) )
# 234 "json_parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'number) in
    Obj.repr(
# 34 "json_parser.mly"
             ( Json_type.Number(_1) )
# 241 "json_parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'array) in
    Obj.repr(
# 35 "json_parser.mly"
             ( Json_type.Array(_1) )
# 248 "json_parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'obj) in
    Obj.repr(
# 36 "json_parser.mly"
             ( Json_type.Object(_1) )
# 255 "json_parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    Obj.repr(
# 37 "json_parser.mly"
             ( Json_type.Bool(true) )
# 261 "json_parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    Obj.repr(
# 38 "json_parser.mly"
             ( Json_type.Bool(false) )
# 267 "json_parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    Obj.repr(
# 39 "json_parser.mly"
             ( Json_type.Null )
# 273 "json_parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    Obj.repr(
# 43 "json_parser.mly"
                  ( [] )
# 279 "json_parser.ml"
               : 'obj))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'members) in
    Obj.repr(
# 44 "json_parser.mly"
                         ( _2 )
# 286 "json_parser.ml"
               : 'obj))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'pair) in
    Obj.repr(
# 48 "json_parser.mly"
                  ( [_1] )
# 293 "json_parser.ml"
               : 'members))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'pair) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'members) in
    Obj.repr(
# 49 "json_parser.mly"
                      ( _1 :: _3 )
# 301 "json_parser.ml"
               : 'members))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'value) in
    Obj.repr(
# 53 "json_parser.mly"
                     ( (_1, _3) )
# 309 "json_parser.ml"
               : 'pair))
; (fun __caml_parser_env ->
    Obj.repr(
# 57 "json_parser.mly"
                 ( [] )
# 315 "json_parser.ml"
               : 'array))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'elements) in
    Obj.repr(
# 58 "json_parser.mly"
                           ( _2 )
# 322 "json_parser.ml"
               : 'array))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'value) in
    Obj.repr(
# 62 "json_parser.mly"
           ( [_1] )
# 329 "json_parser.ml"
               : 'elements))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'value) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'elements) in
    Obj.repr(
# 63 "json_parser.mly"
                         ( _1 :: _3 )
# 337 "json_parser.ml"
               : 'elements))
; (fun __caml_parser_env ->
    Obj.repr(
# 67 "json_parser.mly"
                             ( "" )
# 343 "json_parser.ml"
               : 'string))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'chars) in
    Obj.repr(
# 68 "json_parser.mly"
                                    ( _2 )
# 350 "json_parser.ml"
               : 'string))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'char) in
    Obj.repr(
# 72 "json_parser.mly"
        ( _1 )
# 357 "json_parser.ml"
               : 'chars))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'char) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'chars) in
    Obj.repr(
# 73 "json_parser.mly"
              ( _1 ^ _2 )
# 365 "json_parser.ml"
               : 'chars))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 77 "json_parser.mly"
                 ( _1 )
# 372 "json_parser.ml"
               : 'char))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : char) in
    Obj.repr(
# 78 "json_parser.mly"
                 ( Char.escaped(_1) )
# 379 "json_parser.ml"
               : 'char))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'integer) in
    Obj.repr(
# 81 "json_parser.mly"
                 ( float_of_string(_1) )
# 386 "json_parser.ml"
               : 'number))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'integer) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'frac) in
    Obj.repr(
# 82 "json_parser.mly"
                 ( float_of_string(_1 ^ _2) )
# 394 "json_parser.ml"
               : 'number))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'integer) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 83 "json_parser.mly"
                 ( float_of_string(_1 ^ _2) )
# 402 "json_parser.ml"
               : 'number))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'integer) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'frac) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 84 "json_parser.mly"
                    ( float_of_string(_1 ^ _2 ^ _3) )
# 411 "json_parser.ml"
               : 'number))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 88 "json_parser.mly"
           ( _1 )
# 418 "json_parser.ml"
               : 'integer))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'digits) in
    Obj.repr(
# 89 "json_parser.mly"
                 ( _1 ^ _2 )
# 426 "json_parser.ml"
               : 'integer))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 90 "json_parser.mly"
               ( "-" ^ _2 )
# 433 "json_parser.ml"
               : 'integer))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'digits) in
    Obj.repr(
# 91 "json_parser.mly"
                      ( "-" ^ _2 ^ _3 )
# 441 "json_parser.ml"
               : 'integer))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'digits) in
    Obj.repr(
# 95 "json_parser.mly"
             ( "." ^ _2 )
# 448 "json_parser.ml"
               : 'frac))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'e) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'digits) in
    Obj.repr(
# 99 "json_parser.mly"
           ( "e" ^ _2 )
# 456 "json_parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 103 "json_parser.mly"
         ( _1 )
# 463 "json_parser.ml"
               : 'digits))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'digits) in
    Obj.repr(
# 104 "json_parser.mly"
               ( _1 ^ _2 )
# 471 "json_parser.ml"
               : 'digits))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : char) in
    Obj.repr(
# 108 "json_parser.mly"
       ( Char.escaped(_1) )
# 478 "json_parser.ml"
               : 'e))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : char) in
    Obj.repr(
# 109 "json_parser.mly"
            ( Char.escaped(_1) ^ "+")
# 485 "json_parser.ml"
               : 'e))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : char) in
    Obj.repr(
# 110 "json_parser.mly"
             ( Char.escaped(_1) ^ "-" )
# 492 "json_parser.ml"
               : 'e))
(* Entry parser_main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let parser_main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Json_type.t)
