In order to define a new way of formatting la new language, you must defined first the formatting rules as follow:

pre "\n" : "{", "}",";;"
post "\n" : ";", "}", "="
surround " " : EQUALS, PLUS
childIndent "\t" : (LPAREN, RPAREN), ("{", "}")
selfIndent "\t" : (LPAREN, RPAREN), ("{", "}")


The following description will:
a+b={c+d};;
expected outputs:
(*surround PLUS is the first match*)
a + b = 		(* \n car post EQUALS*)
	{		(*self indent here*)
		c + d 	(*child indent here and surround PLUS*)
	}		(*child indent is finished because RPAREN is the end tag
;; 			(*\n because pre ;;*)
