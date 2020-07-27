defmodule Pokedex.BerryFlavor do
  @moduledoc """
  Flavors determine whether a Pokémon will benefit or suffer from
  eating a berry based on their nature.
  """

  alias Pokedex.BerryFlavor.FlavorBerryMap, as: FlavorBerryMap
  alias Pokedex.CommonModels.Name, as: Name
  alias Pokedex.CommonModels.NamedApiResource, as: NamedApiResource

  @berry_flavor_endpoint "/berry-flavor/"

  defstruct id: nil,
            name: "",
            berries: [],
            contest_type: %{},
            names: []

  def get_by_id(id) do
    {:ok, %Tesla.Env{body: body}} = Pokedex.get(@berry_flavor_endpoint <> to_string(id))
    berry_flavor_result(body)
  end

  def get_by_name(name) when is_atom(name) do
    pokedex_str = Pokedex.atom_to_pokedex_string(name)
    {:ok, %Tesla.Env{body: body}} = Pokedex.get(@berry_flavor_endpoint <> pokedex_str)
    berry_flavor_result(body)
  end

  def get_by_name(name) do
    {:ok, %Tesla.Env{body: body}} = Pokedex.get(@berry_flavor_endpoint <> name)
    berry_flavor_result(body)
  end

  defp berry_flavor_result(berry_flavor) do
    %__MODULE__{
      id: berry_flavor["id"],
      name: berry_flavor["name"],
      contest_type: NamedApiResource.named_api_resource_result(berry_flavor["contest_type"]),
      berries: FlavorBerryMap.flavor_berry_map_result(berry_flavor["berries"]),
      names: Enum.map(berry_flavor["names"],
        fn name -> Name.name_result(name) end)
    }
  end

  defmodule FlavorBerryMap do
    @moduledoc false

    defstruct potency: 0, berry: %{}

    def flavor_berry_map_result(flavor_berry_map) do
      Enum.map(flavor_berry_map, fn flavor_berry ->
        %__MODULE__{
          potency: flavor_berry["potency"],
          berry: NamedApiResource.named_api_resource_result(flavor_berry["berry"])
        }
      end)
    end
  end
end
