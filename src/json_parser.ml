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
  | DIGIT of (char)
  | DIGIT1_9 of (char)
  | CHAR of (char)
  | EOF
  | CONTROL_CHAR of (string)
  | NUMBER of (float)
  | BOOL of (bool)

open Parsing;;
let _ = parse_error;;
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
  273 (* DIGIT1_9 *);
  274 (* CHAR *);
  275 (* CONTROL_CHAR *);
  276 (* NUMBER *);
  277 (* BOOL *);
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
\000\000\028\000\000\000\039\000\000\000\002\000\003\000\004\000\
\005\000\000\000\009\000\000\000\000\000\000\000\014\000\000\000\
\000\000\030\000\000\000\018\000\023\000\022\000\000\000\000\000\
\000\000\029\000\001\000\000\000\000\000\000\000\026\000\000\000\
\000\000\010\000\000\000\000\000\015\000\031\000\019\000\021\000\
\035\000\032\000\038\000\037\000\027\000\033\000\013\000\012\000\
\017\000"

let yydgoto = "\002\000\
\012\000\024\000\014\000\015\000\016\000\017\000\021\000\022\000\
\025\000\031\000\032\000\018\000\038\000\039\000\034\000\040\000"

let yysindex = "\006\000\
\022\255\000\000\254\254\006\255\243\254\000\000\000\000\000\000\
\031\255\000\000\250\254\000\000\015\000\000\000\000\000\000\000\
\000\000\013\255\000\000\015\255\023\255\012\255\000\000\030\255\
\026\255\000\000\250\254\000\000\000\000\000\000\033\255\024\255\
\250\254\000\000\000\000\250\254\043\255\014\255\000\000\250\254\
\022\255\000\000\039\255\022\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\005\000\000\000\000\000\000\000\050\255\000\000\051\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\041\255\
\001\000\000\000\000\000\000\000\042\255\013\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000"

let yygindex = "\000\000\
\000\000\255\255\003\000\000\000\000\000\000\000\014\000\000\000\
\016\000\027\000\000\000\000\000\000\000\023\000\008\000\000\000"

let yytablesize = 276
let yytable = "\013\000\
\034\000\019\000\026\000\027\000\024\000\020\000\001\000\003\000\
\004\000\033\000\023\000\009\000\025\000\005\000\035\000\006\000\
\007\000\008\000\043\000\009\000\041\000\010\000\011\000\003\000\
\004\000\036\000\042\000\037\000\037\000\005\000\045\000\006\000\
\007\000\008\000\046\000\009\000\044\000\010\000\011\000\055\000\
\049\000\029\000\030\000\050\000\028\000\020\000\047\000\054\000\
\029\000\030\000\051\000\052\000\009\000\011\000\020\000\016\000\
\056\000\036\000\048\000\057\000\053\000\000\000\000\000\000\000\
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
\000\000\000\000\000\000\000\000\034\000\034\000\000\000\034\000\
\024\000\024\000\000\000\024\000\000\000\034\000\000\000\034\000\
\025\000\025\000\000\000\025\000"

let yycheck = "\001\000\
\000\000\004\001\016\001\017\001\000\000\003\000\001\000\002\001\
\003\001\016\001\005\001\014\001\000\000\008\001\000\000\010\001\
\011\001\012\001\007\001\014\001\006\001\016\001\017\001\002\001\
\003\001\013\001\004\001\015\001\015\001\008\001\005\001\010\001\
\011\001\012\001\027\000\014\001\007\001\016\001\017\001\041\000\
\033\000\018\001\019\001\036\000\014\001\043\000\014\001\040\000\
\018\001\019\001\008\001\009\001\014\001\004\001\014\001\005\001\
\043\000\016\001\032\000\044\000\038\000\255\255\255\255\255\255\
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
  DIGIT1_9\000\
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
# 19 "json_parser.mly"
            (_1)
# 218 "json_parser.ml"
               : Json_type.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'string) in
    Obj.repr(
# 23 "json_parser.mly"
             ( Json_type.String(_1) )
# 225 "json_parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'number) in
    Obj.repr(
# 24 "json_parser.mly"
             ( Json_type.Number(_1) )
# 232 "json_parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'array) in
    Obj.repr(
# 25 "json_parser.mly"
             ( Json_type.Array(_1) )
# 239 "json_parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'obj) in
    Obj.repr(
# 26 "json_parser.mly"
             ( Json_type.Object(_1) )
# 246 "json_parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    Obj.repr(
# 27 "json_parser.mly"
             ( Json_type.Bool(true) )
# 252 "json_parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    Obj.repr(
# 28 "json_parser.mly"
             ( Json_type.Bool(false) )
# 258 "json_parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    Obj.repr(
# 29 "json_parser.mly"
             ( Json_type.Null )
# 264 "json_parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    Obj.repr(
# 33 "json_parser.mly"
                  ( [] )
# 270 "json_parser.ml"
               : 'obj))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'members) in
    Obj.repr(
# 34 "json_parser.mly"
                         ( _2 )
# 277 "json_parser.ml"
               : 'obj))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'pair) in
    Obj.repr(
# 38 "json_parser.mly"
                  ( [_1] )
# 284 "json_parser.ml"
               : 'members))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'pair) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'members) in
    Obj.repr(
# 39 "json_parser.mly"
                      ( _1 :: _3 )
# 292 "json_parser.ml"
               : 'members))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'value) in
    Obj.repr(
# 43 "json_parser.mly"
                     ( (_1, _3) )
# 300 "json_parser.ml"
               : 'pair))
; (fun __caml_parser_env ->
    Obj.repr(
# 47 "json_parser.mly"
                 ( [] )
# 306 "json_parser.ml"
               : 'array))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'elements) in
    Obj.repr(
# 48 "json_parser.mly"
                           ( _2 )
# 313 "json_parser.ml"
               : 'array))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'value) in
    Obj.repr(
# 52 "json_parser.mly"
           ( [_1] )
# 320 "json_parser.ml"
               : 'elements))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'value) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'elements) in
    Obj.repr(
# 53 "json_parser.mly"
                         ( _1 :: _3 )
# 328 "json_parser.ml"
               : 'elements))
; (fun __caml_parser_env ->
    Obj.repr(
# 57 "json_parser.mly"
                             ( "" )
# 334 "json_parser.ml"
               : 'string))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'chars) in
    Obj.repr(
# 58 "json_parser.mly"
                                    ( _2 )
# 341 "json_parser.ml"
               : 'string))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'char) in
    Obj.repr(
# 62 "json_parser.mly"
        ( _1 )
# 348 "json_parser.ml"
               : 'chars))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'char) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'chars) in
    Obj.repr(
# 63 "json_parser.mly"
              ( _1 ^ _2 )
# 356 "json_parser.ml"
               : 'chars))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 67 "json_parser.mly"
                 ( _1 )
# 363 "json_parser.ml"
               : 'char))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : char) in
    Obj.repr(
# 68 "json_parser.mly"
                 ( Char.escaped(_1) )
# 370 "json_parser.ml"
               : 'char))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'integer) in
    Obj.repr(
# 71 "json_parser.mly"
                 ( float_of_string(_1) )
# 377 "json_parser.ml"
               : 'number))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'integer) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'frac) in
    Obj.repr(
# 72 "json_parser.mly"
                 ( float_of_string(_1 ^ _2) )
# 385 "json_parser.ml"
               : 'number))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'integer) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 73 "json_parser.mly"
                 ( float_of_string(_1 ^ _2) )
# 393 "json_parser.ml"
               : 'number))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'integer) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'frac) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 74 "json_parser.mly"
                    ( float_of_string(_1 ^ _2 ^ _3) )
# 402 "json_parser.ml"
               : 'number))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : char) in
    Obj.repr(
# 78 "json_parser.mly"
           ( Char.escaped(_1) )
# 409 "json_parser.ml"
               : 'integer))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : char) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'digits) in
    Obj.repr(
# 79 "json_parser.mly"
                    ( Char.escaped(_1) ^ _2 )
# 417 "json_parser.ml"
               : 'integer))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : char) in
    Obj.repr(
# 80 "json_parser.mly"
               ( "-" ^ Char.escaped(_2) )
# 424 "json_parser.ml"
               : 'integer))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : char) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'digits) in
    Obj.repr(
# 81 "json_parser.mly"
                         ( "-" ^ Char.escaped(_2) ^ _3 )
# 432 "json_parser.ml"
               : 'integer))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'digits) in
    Obj.repr(
# 85 "json_parser.mly"
             ( "." ^ _2 )
# 439 "json_parser.ml"
               : 'frac))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'e) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'digits) in
    Obj.repr(
# 89 "json_parser.mly"
           ( "e" ^ _2 )
# 447 "json_parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : char) in
    Obj.repr(
# 93 "json_parser.mly"
         ( Char.escaped(_1) )
# 454 "json_parser.ml"
               : 'digits))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : char) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'digits) in
    Obj.repr(
# 94 "json_parser.mly"
               ( Char.escaped(_1) ^ _2 )
# 462 "json_parser.ml"
               : 'digits))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : char) in
    Obj.repr(
# 98 "json_parser.mly"
       ( Char.escaped(_1) )
# 469 "json_parser.ml"
               : 'e))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : char) in
    Obj.repr(
# 99 "json_parser.mly"
            ( Char.escaped(_1) ^ "+")
# 476 "json_parser.ml"
               : 'e))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : char) in
    Obj.repr(
# 100 "json_parser.mly"
             ( Char.escaped(_1) ^ "-" )
# 483 "json_parser.ml"
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
