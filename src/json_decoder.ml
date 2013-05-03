
module E = Baselib.Std.Either

let decode str =
  let lexbuf = Lexing.from_string str in
  try
    E.Right(Json_parser.parser_main Json_lexer.token lexbuf)
  with Parsing.Parse_error -> E.Left("Parse error")
