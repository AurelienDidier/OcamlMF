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
  | id { ID (Lexing.lexeme lexbuf) }
  | eof { EOF }