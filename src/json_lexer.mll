{
  open Lexing
  exception Eof
}
(* Json Tokens *)
rule token = parse
    [' ' '\t' '\n']    {token lexbuf }
    | '{' { LPAREN }
    | '[' { LBRACE }
    | '}' { RPAREN }
    | ']' { RBRACE }
    | ':' { COLON }
    | ',' { COMMA }
    | eof { raise Eof}
    | '-' { MINUS }
    | '+' { PLUS }
    | "true" { TRUE }
    | "false" {FALSE}
    | "null" {NULL}
    | ['0'-'9'] as digit { DIGIT(digit) }
    | '.' { DOT }
    | '"' { DOUBLE_QUOTE }
    | ['e' 'E'] as exp { EXP(exp) }
    | '\\' ['"' '\\' '/' 'b' 'f' 'n' 'r' 't']  as ctl { CONTROL_CHAR(ctl) }
    | "\\u"['0'-'9' 'a'-'f' 'A'-'F']['0'-'9' 'a'-'f' 'A'-'F']['0'-'9' 'a'-'f' 'A'-'F']['0'-'9' 'a'-'f' 'A'-'F'] as ctl { CONTROL_CHAR(ctl) }
    | _ as c { CHAR(c) }
