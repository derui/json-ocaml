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
# 3 "json_parser.mly"

    let to_str = function
      | Json_type.String(s) -> "string:" ^ s
      | Json_type.Number(_) -> "number"
      | Json_type.Object(_) -> "object"
      | Json_type.Array(_) -> "array"
      | Json_type.Null -> "null"
      | Json_type.Bool(_) -> "bool"

  
# 38 "json_parser.ml"
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
\009\000\003\000\003\000\010\000\010\000\011\000\011\000\011\000\
\011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
\004\000\004\000\004\000\004\000\012\000\012\000\012\000\012\000\
\013\000\014\000\015\000\015\000\016\000\016\000\016\000\000\000"

let yylen = "\002\000\
\002\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\002\000\003\000\001\000\003\000\003\000\002\000\003\000\001\000\
\003\000\002\000\003\000\001\000\002\000\001\000\001\000\001\000\
\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\001\000\002\000\002\000\003\000\001\000\002\000\002\000\003\000\
\002\000\002\000\001\000\002\000\001\000\002\000\002\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\006\000\007\000\008\000\
\000\000\000\000\048\000\000\000\002\000\003\000\004\000\005\000\
\000\000\009\000\000\000\000\000\000\000\014\000\000\000\000\000\
\000\000\030\000\028\000\031\000\029\000\026\000\027\000\025\000\
\018\000\024\000\023\000\032\000\022\000\000\000\000\000\000\000\
\038\000\001\000\000\000\000\000\000\000\035\000\000\000\000\000\
\010\000\000\000\000\000\015\000\040\000\019\000\021\000\044\000\
\041\000\047\000\046\000\036\000\042\000\013\000\012\000\017\000"

let yydgoto = "\002\000\
\011\000\023\000\013\000\014\000\015\000\016\000\020\000\021\000\
\024\000\038\000\039\000\017\000\045\000\046\000\041\000\047\000"

let yysindex = "\014\000\
\000\255\000\000\009\255\063\255\002\255\000\000\000\000\000\000\
\028\255\004\255\000\000\027\000\000\000\000\000\000\000\000\000\
\250\254\000\000\022\255\030\255\031\255\000\000\032\255\035\255\
\004\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\021\255\046\255\004\255\
\000\000\000\000\004\255\016\255\037\255\000\000\004\255\000\255\
\000\000\042\255\000\255\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\
\021\000\000\000\000\000\000\000\053\255\000\000\055\255\000\000\
\005\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\044\255\017\000\
\000\000\000\000\000\000\051\255\029\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\255\255\003\000\000\000\000\000\000\000\019\000\000\000\
\025\000\031\000\000\000\000\000\000\000\033\000\235\255\000\000"

let yytablesize = 292
let yytable = "\012\000\
\037\000\003\000\004\000\053\000\039\000\019\000\043\000\005\000\
\044\000\006\000\007\000\008\000\018\000\009\000\001\000\010\000\
\043\000\025\000\056\000\040\000\033\000\057\000\009\000\058\000\
\059\000\061\000\042\000\048\000\034\000\026\000\027\000\028\000\
\029\000\049\000\054\000\030\000\031\000\050\000\051\000\052\000\
\032\000\033\000\034\000\035\000\036\000\037\000\062\000\026\000\
\027\000\028\000\029\000\044\000\019\000\030\000\031\000\009\000\
\011\000\020\000\032\000\016\000\034\000\035\000\036\000\037\000\
\003\000\004\000\045\000\022\000\063\000\055\000\005\000\000\000\
\006\000\007\000\008\000\064\000\009\000\060\000\010\000\000\000\
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
\000\000\000\000\000\000\000\000\037\000\037\000\000\000\037\000\
\039\000\039\000\000\000\039\000\000\000\037\000\000\000\037\000\
\000\000\039\000\000\000\039\000\043\000\043\000\000\000\043\000\
\033\000\033\000\000\000\033\000\000\000\043\000\000\000\043\000\
\034\000\034\000\000\000\034\000"

let yycheck = "\001\000\
\000\000\002\001\003\001\025\000\000\000\003\000\013\001\008\001\
\015\001\010\001\011\001\012\001\004\001\014\001\001\000\016\001\
\000\000\016\001\040\000\016\001\000\000\043\000\014\001\008\001\
\009\001\047\000\000\000\006\001\000\000\002\001\003\001\004\001\
\005\001\004\001\014\001\008\001\009\001\007\001\007\001\005\001\
\013\001\014\001\015\001\016\001\017\001\018\001\048\000\002\001\
\003\001\004\001\005\001\015\001\050\000\008\001\009\001\014\001\
\004\001\014\001\013\001\005\001\015\001\016\001\017\001\018\001\
\002\001\003\001\016\001\005\001\050\000\039\000\008\001\255\255\
\010\001\011\001\012\001\051\000\014\001\045\000\016\001\255\255\
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
# 233 "json_parser.ml"
               : Json_type.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'string) in
    Obj.repr(
# 33 "json_parser.mly"
             ( Json_type.String(_1) )
# 240 "json_parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'number) in
    Obj.repr(
# 34 "json_parser.mly"
             ( Json_type.Number(_1) )
# 247 "json_parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'array) in
    Obj.repr(
# 35 "json_parser.mly"
             ( Json_type.Array(_1) )
# 254 "json_parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'obj) in
    Obj.repr(
# 36 "json_parser.mly"
             ( Json_type.Object(_1) )
# 261 "json_parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    Obj.repr(
# 37 "json_parser.mly"
             ( Json_type.Bool(true) )
# 267 "json_parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    Obj.repr(
# 38 "json_parser.mly"
             ( Json_type.Bool(false) )
# 273 "json_parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    Obj.repr(
# 39 "json_parser.mly"
             ( Json_type.Null )
# 279 "json_parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    Obj.repr(
# 43 "json_parser.mly"
                  ( [] )
# 285 "json_parser.ml"
               : 'obj))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'members) in
    Obj.repr(
# 44 "json_parser.mly"
                         (_2 )
# 292 "json_parser.ml"
               : 'obj))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'pair) in
    Obj.repr(
# 48 "json_parser.mly"
                  ( [_1] )
# 299 "json_parser.ml"
               : 'members))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'pair) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'members) in
    Obj.repr(
# 49 "json_parser.mly"
                      ( _1 :: _3 )
# 307 "json_parser.ml"
               : 'members))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'value) in
    Obj.repr(
# 53 "json_parser.mly"
                     ( (_1, _3) )
# 315 "json_parser.ml"
               : 'pair))
; (fun __caml_parser_env ->
    Obj.repr(
# 57 "json_parser.mly"
                 ( [] )
# 321 "json_parser.ml"
               : 'array))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'elements) in
    Obj.repr(
# 58 "json_parser.mly"
                           ( _2 )
# 328 "json_parser.ml"
               : 'array))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'value) in
    Obj.repr(
# 62 "json_parser.mly"
           ( [_1] )
# 335 "json_parser.ml"
               : 'elements))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'value) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'elements) in
    Obj.repr(
# 63 "json_parser.mly"
                         ( _1 :: _3 )
# 343 "json_parser.ml"
               : 'elements))
; (fun __caml_parser_env ->
    Obj.repr(
# 67 "json_parser.mly"
                             ( "" )
# 349 "json_parser.ml"
               : 'string))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'chars) in
    Obj.repr(
# 68 "json_parser.mly"
                                    ( _2 )
# 356 "json_parser.ml"
               : 'string))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'char) in
    Obj.repr(
# 72 "json_parser.mly"
        ( _1 )
# 363 "json_parser.ml"
               : 'chars))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'char) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'chars) in
    Obj.repr(
# 73 "json_parser.mly"
              ( _1 ^ _2 )
# 371 "json_parser.ml"
               : 'chars))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 77 "json_parser.mly"
                 ( _1 )
# 378 "json_parser.ml"
               : 'char))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 78 "json_parser.mly"
                 ( _1 )
# 385 "json_parser.ml"
               : 'char))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : char) in
    Obj.repr(
# 79 "json_parser.mly"
                 ( Char.escaped(_1) )
# 392 "json_parser.ml"
               : 'char))
; (fun __caml_parser_env ->
    Obj.repr(
# 80 "json_parser.mly"
                 ( "." )
# 398 "json_parser.ml"
               : 'char))
; (fun __caml_parser_env ->
    Obj.repr(
# 81 "json_parser.mly"
                 ( "-" )
# 404 "json_parser.ml"
               : 'char))
; (fun __caml_parser_env ->
    Obj.repr(
# 82 "json_parser.mly"
                 ( "+" )
# 410 "json_parser.ml"
               : 'char))
; (fun __caml_parser_env ->
    Obj.repr(
# 83 "json_parser.mly"
                 ( "{" )
# 416 "json_parser.ml"
               : 'char))
; (fun __caml_parser_env ->
    Obj.repr(
# 84 "json_parser.mly"
                 ( "}" )
# 422 "json_parser.ml"
               : 'char))
; (fun __caml_parser_env ->
    Obj.repr(
# 85 "json_parser.mly"
                 ( "(" )
# 428 "json_parser.ml"
               : 'char))
; (fun __caml_parser_env ->
    Obj.repr(
# 86 "json_parser.mly"
                 ( ")" )
# 434 "json_parser.ml"
               : 'char))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : char) in
    Obj.repr(
# 87 "json_parser.mly"
                 ( Char.escaped(_1) )
# 441 "json_parser.ml"
               : 'char))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'integer) in
    Obj.repr(
# 90 "json_parser.mly"
                 ( float_of_string(_1) )
# 448 "json_parser.ml"
               : 'number))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'integer) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'frac) in
    Obj.repr(
# 91 "json_parser.mly"
                 ( float_of_string(_1 ^ _2) )
# 456 "json_parser.ml"
               : 'number))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'integer) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 92 "json_parser.mly"
                 ( float_of_string(_1 ^ _2) )
# 464 "json_parser.ml"
               : 'number))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'integer) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'frac) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 93 "json_parser.mly"
                    ( float_of_string(_1 ^ _2 ^ _3) )
# 473 "json_parser.ml"
               : 'number))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 97 "json_parser.mly"
           ( _1 )
# 480 "json_parser.ml"
               : 'integer))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'digits) in
    Obj.repr(
# 98 "json_parser.mly"
                 ( _1 ^ _2 )
# 488 "json_parser.ml"
               : 'integer))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 99 "json_parser.mly"
               ( "-" ^ _2 )
# 495 "json_parser.ml"
               : 'integer))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'digits) in
    Obj.repr(
# 100 "json_parser.mly"
                      ( "-" ^ _2 ^ _3 )
# 503 "json_parser.ml"
               : 'integer))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'digits) in
    Obj.repr(
# 104 "json_parser.mly"
             ( "." ^ _2 )
# 510 "json_parser.ml"
               : 'frac))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'e) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'digits) in
    Obj.repr(
# 108 "json_parser.mly"
           ( "e" ^ _2 )
# 518 "json_parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 112 "json_parser.mly"
         ( _1 )
# 525 "json_parser.ml"
               : 'digits))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'digits) in
    Obj.repr(
# 113 "json_parser.mly"
               ( _1 ^ _2 )
# 533 "json_parser.ml"
               : 'digits))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : char) in
    Obj.repr(
# 117 "json_parser.mly"
       ( Char.escaped(_1) )
# 540 "json_parser.ml"
               : 'e))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : char) in
    Obj.repr(
# 118 "json_parser.mly"
            ( Char.escaped(_1) ^ "+")
# 547 "json_parser.ml"
               : 'e))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : char) in
    Obj.repr(
# 119 "json_parser.mly"
             ( Char.escaped(_1) ^ "-" )
# 554 "json_parser.ml"
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
