%{
open FormatRule
%}

%token <string> STRING
%token POST
%token PRE
%token SURROUND
%token COLON
%token EOF

%left POST
%left PRE
%left SURROUND
%left INDENTSELF
%left INDENTCHILD

%start <FormatRule.table> main
%%

main:
  | e = expr { Some e }
  | EOF       { None   } ;

expr:
  | PRE; s=STRING; COLON; vl = list_fields; { Pre(s, vl)}
  | POST; s=STRING; COLON; vl = list_fields; { Post(s, vl)}
  | SURROUND; s=STRING; COLON; vl = list_fields; { Surround(s, vl)}
  | INDENTSELF; s=STRING; COLON; vl = list_fields; { IdentSelf(s, vl)}	
  | INDENTCHILD; s=STRING; COLON; vl = list_fields; { IndentChild(s, vl)}
  | UNINDENTSELF; s=STRING; COLON; vl = list_fields; { UnIdentSelf(s, vl)}	
  | UNINDENTCHILD; s=STRING; COLON; vl = list_fields; { UnIndentChild(s, vl)}
  
list_fields:
    vl = separated_list(COMMA, value)         { vl } ;
