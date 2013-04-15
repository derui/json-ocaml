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
  | CHAR of (char)
  | CONTROL_CHAR of (string)
  | NUMBER of (float)
  | BOOL of (bool)

val parser_main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Json_type.t
