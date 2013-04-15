(* jsonのパーサー *)

%token <string> STRING
%token LPAREN LBRACE RPAREN RBRACE COLON COMMA MINUS PLUS TRUE FALSE NULL
%toekn DOT DOUBLE_QUOTE EXP CONTROL_CHAR CHAR
%token <float> NUMBER
%token <bool> BOOL
%start parser_main
%type <Json.t> parser_main
%%

parser_main:
  value EOF  {$1}
;

value:
  string
 | number    { $1 }
 | array     { $1 }
 | obj       { $1 }
 | TRUE      { Bool(true) }
 | FALSE     { Bool(false) }
 | null      { Null }
;

obj:
   LPAREN RPAREN  { Object([]) }
 | LPAREN members RPAREN { Object($2) }
;

members:
   pair           { [$1] }
 | pair COMMA members { Object($1 :: $3) }
;

pair:
  string COLON value { ($1, $3) }
  ;

array:
  LBRACE RBRACE  { Array([]) }
 | LBRACE elements RBRACE  { Array($2) }
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
  char  { string_of_char($1) }
 | char chars { $1 ^ $2 }
     ;

char:
  CONTROL_CHAR   { $1 }
 | CHAR          { $1 }
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
  EXP  { $1 }
  EXP PLUS { $1 ^ "+"}
  EXP MINUS { $1 ^ "-" }
  ;
