(** type of json  *)
type t = String of string               (* String *)
         | Number of float              (* Number *)
         | Bool of bool                 (* True or False *)
         | Array of t list             (* Array *)
         | Object of (string * t) list               (* Object *)
         | Null                         (* Null *)

(** results for conversion  *)
type result = (t, string) Baselib.Std.Either.t
