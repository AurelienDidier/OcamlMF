(** The type of binary operators. *)
type expr = 
  | Pre (e1, string, string) (*use string list instead of list*)
  | Post (e1, string, string)
  | Surround (e1, string, string) 
  | IndentChild (e1, string, string)
  | IndentSelf (e1, (string, string), string)
 
