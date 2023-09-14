%{
open Ast
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

%start <Ast.expr> prog

%%

prog:
	| e = expr; EOF { e }
	;

expr:
	| e1 = PRE; e2= FORMATKIND; COLON; e3 = string { Pre (e1, e2, e3) }
	| e1 = POST; e2= FORMATKIND; COLON; e3 = string { Post (e1, e2, e3) }
	| e1 = SURROUND; e2= FORMATKIND; COLON; e3 = string { Surround (e1, e2, e3) }
	;
	
