(** The type of binary operators. *)
type rule = 
  | Pre (string, string list) (*use string list instead of list*)
  | Post (string, string list)
  | Surround (string, string list) 
  | IndentChild (string, string list)
  | IndentSelf (string, string list)
  | UnIndentChild (string, string list)
  | UnIndentSelf (string, string list)
 
 type table = rule list
 
 
 
