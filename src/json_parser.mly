/* jsonのパーサー */

  %{
    let to_str = function
      | Json_type.String(s) -> "string:" ^ s
      | Json_type.Number(_) -> "number"
      | Json_type.Object(_) -> "object"
      | Json_type.Array(_) -> "array"
      | Json_type.Null -> "null"
      | Json_type.Bool(_) -> "bool"

  %}

%token <string> STRING
%token LPAREN LBRACE RPAREN RBRACE COLON COMMA MINUS PLUS TRUE FALSE NULL
%token DOT DOUBLE_QUOTE
%token <char> EXP
%token <string> DIGIT
%token <char> CHAR
%token EOF
%token <string> CONTROL_CHAR
%token <float> NUMBER
%token <bool> BOOL
%start parser_main
%type <Json_type.t> parser_main
%%

parser_main:
  value EOF {$1}
;

value:
  string     { Json_type.String($1) }
 | number    { Json_type.Number($1) }
 | array     { Json_type.Array($1) }
 | obj       { Json_type.Object($1) }
 | TRUE      { Json_type.Bool(true) }
 | FALSE     { Json_type.Bool(false) }
 | NULL      { Json_type.Null }
;

obj:
   LPAREN RPAREN  { [] }
 | LPAREN members RPAREN { $2 }
;

members:
   pair           { [$1] }
 | pair COMMA members { $1 :: $3 }
;

pair:
  string COLON value { ($1, $3) }
  ;

array:
  LBRACE RBRACE  { [] }
 | LBRACE elements RBRACE  { $2 }
;

elements:
  value    { [$1] }
 | value COMMA elements  { $1 :: $3 }
;

string:
  DOUBLE_QUOTE DOUBLE_QUOTE  { "" }
 | DOUBLE_QUOTE chars DOUBLE_QUOTE  { $2 }
;

chars:
  char  { $1 }
 | char chars { $1 ^ $2 }
;

char:
  CONTROL_CHAR   { $1 }
 | CHAR          { Char.escaped($1) }
;
number:
   integer       { float_of_string($1) }
 | integer frac  { float_of_string($1 ^ $2) }
 | integer exp   { float_of_string($1 ^ $2) }
 | integer frac exp { float_of_string($1 ^ $2 ^ $3) }
;

integer:
   DIGIT   { $1 }
 | DIGIT digits  { $1 ^ $2 }
 | MINUS DIGIT { "-" ^ $2 }
 | MINUS DIGIT digits { "-" ^ $2 ^ $3 }
;

frac:
  DOT digits { "." ^ $2 }
;

exp:
  e digits { "e" ^ $2 }
;

digits:
  DIGIT  { $1 }
 |DIGIT digits { $1 ^ $2 }
;

e:
  EXP  { Char.escaped($1) }
 | EXP PLUS { Char.escaped($1) ^ "+"}
 | EXP MINUS { Char.escaped($1) ^ "-" }
;
