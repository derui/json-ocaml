
module Decoder = Json_decoder

module Type = Json_type

module E = Baselib.Std.Either

(** type of json  *)
type t = Type.t

type result = Type.result

let encode json = failwith ""

let decode = Decoder.decode
