defmodule Membrane.MP4.Payload do
  @moduledoc """
  MP4 payload description.

  Only a payloaded stream can be muxed into MP4 container.
  """

  @typedoc """
  MP4 payload description.

  Contains the following fields:
  - content - a struct with content-specific information
  - sample_duration - duration of each payloaded packet in `timescale` units
  - timescale - expressed in ticks per second
  - height - frame height in pixels, should be set to 0 for non-visual streams
  - width - frame width in pixels, should be set to 0 for non-visual streams
  """
  @type t :: %__MODULE__{
          content: struct,
          sample_duration: pos_integer,
          timescale: pos_integer,
          height: non_neg_integer,
          width: non_neg_integer
        }
  @enforce_keys [:content, :sample_duration, :timescale]
  defstruct @enforce_keys ++ [height: 0, width: 0, inter_frames?: false]
end
