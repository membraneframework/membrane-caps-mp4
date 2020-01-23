defmodule Membrane.Caps.MP4.Payload do
  @enforce_keys [:content, :sample_duration, :timescale]
  defstruct @enforce_keys ++ [height: 0, width: 0, inter_frames?: false]
end
