{
open Parser
}

let white = [' ' '\t']+
let letter = ['a'-'z' 'A'-'Z']
let FORMATKIND = letter+
let newline = '\n'

rule read = 
  parse
  | white { read lexbuf }
  | ":" { COLON }
  | "pre" { PRE }
  | "post" { POST }
  | "surround" { SURROUND } 
  | "indentChild" { INDENTCHILD }
  | "indentSelf" { INDENTSELF }
  | id { ID (Lexing.lexeme lexbuf) }
  | eof { EOF }
