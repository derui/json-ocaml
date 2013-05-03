
module Decoder = Json_decoder
module Encoder = Json_encoder

module Type = Json_type

module E = Baselib.Std.Either

(** type of json  *)
type t = Type.t

type result = Type.result

let encode = Encoder.encode

let decode = Decoder.decode

