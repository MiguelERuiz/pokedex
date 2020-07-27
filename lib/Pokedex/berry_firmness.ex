defmodule Pokedex.BerryFirmness do
  @moduledoc """
  Berries can be soft or hard.
  """

  alias Pokedex.CommonModels.Name, as: Name
  alias Pokedex.CommonModels.NamedApiResource, as: NamedApiResource

  @berry_firmness_endpoint "/berry-firmness/"

  defstruct id: nil,
            name: "",
            berries: [],
            names: []

  def get_by_id(id) do
    {:ok, %Tesla.Env{body: body}} = Pokedex.get(@berry_firmness_endpoint <> to_string(id))
    berry_firmness_result(body)
  end

  def get_by_name(name) when is_atom(name) do
    pokedex_str = Pokedex.atom_to_pokedex_string(name)
    {:ok, %Tesla.Env{body: body}} = Pokedex.get(@berry_firmness_endpoint <> pokedex_str)
    berry_firmness_result(body)
  end

  def get_by_name(name) do
    {:ok, %Tesla.Env{body: body}} = Pokedex.get(@berry_firmness_endpoint <> name)
    berry_firmness_result(body)
  end

  defp berry_firmness_result(berry_firmness) do
    %__MODULE__{
      id: berry_firmness["id"],
      name: berry_firmness["name"],
      berries: Enum.map(berry_firmness["berries"],
        fn berry -> NamedApiResource.named_api_resource_result(berry) end),
      names: Enum.map(berry_firmness["names"],
        fn name -> Name.name_result(name) end)
    }
  end
end
