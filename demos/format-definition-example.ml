pre "\n" : "{", "}",";;"
post "\n" : ";", "}", "="
surround " " : EQUALS, PLUS
childIndent "\t" : (LPAREN, RPAREN), ("{", "}")
selfIndent "\t" : (LPAREN, RPAREN), ("{", "}")

