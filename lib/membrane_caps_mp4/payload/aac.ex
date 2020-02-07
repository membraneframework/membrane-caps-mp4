defmodule Membrane.Caps.MP4.Payload.AAC do
  @enforce_keys [:esds, :sample_rate, :channels]
  defstruct @enforce_keys
end
