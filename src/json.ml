
module Decoder = Json_decoder

module Type = Json_type

module E = Baselib.Std.Either

(** type of json  *)
type t = Json_type.t

type result = (t, string) E.t

let encode json = failwith ""

let decode = Decoder.decode
