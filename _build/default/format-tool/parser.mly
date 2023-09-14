%{
open FormatST
%}

%token <string> FORMATKIND
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

%type <string> expr

%start <FormatST.expr> prog

%%

prog:
	| e = expr; EOF { e };

expr:
	| PRE; e2= FORMATKIND; COLON; e3 = string { Pre(e2, e3)}
	| POST; e2= FORMATKIND; COLON; e3 = string { Post(e2, e3)}
	| SURROUND; e2= FORMATKIND; COLON; e3 = string { Surround(e2, e3)}
	| INDENTSELF; e2= FORMATKIND; COLON; e3 = string { IndentSelf(e2, e3)}	
	| INDENTCHILD; e2= FORMATKIND; COLON; e3 = string { IndentChild(e2, e3) ;
