defmodule Pokedex.CommonModels do
  @moduledoc false
  defmodule NamedApiResource do
    @moduledoc false

    def named_api_resource_result(result) do
      %{
        name: result["name"],
        url: result["url"]
      }
    end
  end

  defmodule Name do
    @moduledoc false

    defstruct name: "", language: %{}

    def name_result(result) do
      %__MODULE__{
        name: result["name"],
        language: NamedApiResource.named_api_resource_result(result["language"])
      }
    end
  end
end
