
module Decoder : sig
  include module type of Json_decoder
end

module Type : sig
  include module type of Json_type
end

(** type of json  *)
type t = Type.t


(** encode Json type structure to stringified JSON. *)
val encode : t -> string

(** Decode stringified JSON to be type structured json. *)
val decode : string -> Type.result
