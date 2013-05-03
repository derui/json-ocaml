
(** The JSON Decoder module  *)
module Decoder : sig
  include module type of Json_decoder
end

(** The JSON Encoder module *)
module Encoder : sig
  include module type of Json_encoder
end

(** The module having some types for JSON other modules *)
module Type : sig
  include module type of Json_type
end

(** type of json  *)
type t = Type.t

(** encode Json type structure to stringified JSON. *)
val encode : t -> string

(** Decode stringified JSON to be type structured json. *)
val decode : string -> Type.result
