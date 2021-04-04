defmodule Pokedex.CommonModels do
  @moduledoc false

  defmodule NamedApiResource do
    @moduledoc false

    # Type definition
    @type t :: %{name: String.t(), url: String.t()}

  end

  defmodule Name do
    @moduledoc false

    # Type definition
    @type t :: %{name: String.t(), language: NamedApiResource.t()}

    defstruct name: "", language: %{}

    def name_result(result) do
      %{
        name: result["name"],
        language: %{name: result["language"]["name"], url: result["language"]["url"]}
      }
    end
  end
end
