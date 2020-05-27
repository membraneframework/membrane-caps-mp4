defmodule Membrane.MP4.Payload.AVC1 do
  @moduledoc """
  H264 content description for `Membrane.MP4.Payload`.
  """

  @type t :: %__MODULE__{
          avcc: binary
        }
  @enforce_keys [:avcc]
  defstruct @enforce_keys
end
