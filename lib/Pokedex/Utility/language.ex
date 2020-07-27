defmodule Pokedex.Language do
  @moduledoc false

  defstruct id: nil,
            name: "",
            official: false,
            iso639: "",
            iso3611: ""

  def language_result(result) do
    %__MODULE__{
      id: result["id"],
      name: result["name"],
      official: result["official"],
      iso639: result["iso639"],
      iso3611: result["iso3611"]
    }
  end
end
