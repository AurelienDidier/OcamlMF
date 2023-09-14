(** The type of binary operators. *)
type expr = 
  | Pre (e1, string, string) (*use string list instead of list*)
  | Post (e1, string, string)
  | Surround (e1, string, string)
