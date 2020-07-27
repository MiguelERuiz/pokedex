defmodule Pokedex.Berry do
  @moduledoc """
  Small fruits that can provide HP and status condition restoration, stat enhancement
  and even damage negation when eaten by Pokémon.
  """

  alias Pokedex.Berry.BerryFlavorMap, as: BerryFlavorMap
  alias Pokedex.CommonModels.NamedApiResource, as: NamedApiResource

  @berry_endpoint "/berry/"

  defstruct id: nil,
            name: "",
            growth_time: 0,
            max_harvest: 0,
            natural_gift_power: 0,
            size: 0,
            smoothness: 0,
            soil_dryness: 0,
            firmness: %{},
            flavors: [],
            item: %{},
            natural_gift_type: %{}

  def get_by_id(id) do
    url = @berry_endpoint <> to_string(id)
    case Pokedex.get_request(url) do
      {:ok, body} -> {:ok, berry_result(body)}
      {:error, msg} -> {:error, msg}
    end
  end

  def get_by_name(name) when is_atom(name) do
    pokedex_str = Pokedex.atom_to_pokedex_string(name)
    url = @berry_endpoint <> pokedex_str
    case Pokedex.get_request(url) do
      {:ok, body} -> {:ok, berry_result(body)}
      {:error, msg} -> {:error, msg}
    end
  end

  def get_by_name(name) do
    url = @berry_endpoint <> name
    case Pokedex.get_request(url) do
      {:ok, body} -> {:ok, berry_result(body)}
      {:error, msg} -> {:error, msg}
    end
  end

  defp berry_result(berry) do
    %__MODULE__{
      id: berry["id"],
      name: berry["name"],
      growth_time: berry["growth_time"],
      max_harvest: berry["max_harvest"],
      natural_gift_power: berry["natural_gift_power"],
      size: berry["size"],
      smoothness: berry["smoothness"],
      soil_dryness: berry["soil_dryness"],
      firmness: NamedApiResource.named_api_resource_result(berry["firmness"]),
      flavors: BerryFlavorMap.berry_flavor_map_result(berry["flavors"]),
      item: NamedApiResource.named_api_resource_result(berry["item"]),
      natural_gift_type: NamedApiResource.named_api_resource_result(berry["natural_gift_type"])
    }
  end

  defmodule BerryFlavorMap do
    @moduledoc false

    defstruct potency: 0, flavor: %{}

    def berry_flavor_map_result(berry_flavor_map) do
      Enum.map(berry_flavor_map, fn berry_flavor ->
        %__MODULE__{
          potency: berry_flavor["potency"],
          flavor: NamedApiResource.named_api_resource_result(berry_flavor["flavor"])
        }
      end)
    end
  end
end
