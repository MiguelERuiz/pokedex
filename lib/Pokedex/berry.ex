defmodule Pokedex.Berry do
  @moduledoc """
  Small fruits that can provide HP and status condition restoration, stat enhancement
  and even damage negation when eaten by Pokémon.
  """

  alias Pokedex.Berry.BerryFlavorMap, as: BerryFlavorMap
  alias Pokedex.CommonModels.NamedApiResource, as: NamedApiResource

  @berry_endpoint "/berry/"

  # Type definition
  @type berry :: %__MODULE__{
    id: pos_integer(),
    name: String.t(),
    growth_time: integer(),
    max_harvest: integer(),
    natural_gift_power: integer(),
    size: integer(),
    smoothness: integer(),
    soil_dryness: integer(),
    firmness: NamedApiResource.t(),
    flavors: list(BerryFlavorMap.t()),
    item: NamedApiResource.t(),
    natural_gift_type: NamedApiResource.t()
  }

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

  @spec get_by_id(integer()) :: {:ok, berry()} | {:error, atom()}
  def get_by_id(id) do
    url = @berry_endpoint <> to_string(id)
    case Pokedex.get_request(url) do
      {:ok, body} -> {:ok, berry_result(body)}
      {:error, msg} -> {:error, msg}
    end
  end

  @spec get_by_name(Pokedex.t()) :: {:ok, berry()} | {:error, atom()}
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

  @spec berry_result(map()) :: berry()
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
      firmness: %{name: berry["firmness"]["name"], url: berry["firmness"]["url"]},
      flavors: BerryFlavorMap.parse_result(berry["flavors"]),
      item: %{name: berry["item"]["name"], url: berry["item"]["url"]},
      natural_gift_type: %{name: berry["natural_gift_type"]["name"], url: berry["natural_gift_type"]["url"]}
    }
  end

  defmodule BerryFlavorMap do
    @moduledoc false

    # Type definition
    @type t :: %{potency: integer(), flavor: NamedApiResource.t()}

    defstruct potency: 0, flavor: %{}

    @spec parse_result(list(map())) :: list(t())
    def parse_result(berry_flavor_map) do
      Enum.map(berry_flavor_map, fn berry_flavor ->
        %{
          potency: berry_flavor["potency"],
          flavor: %{name: berry_flavor["flavor"]["name"], url: berry_flavor["flavor"]["url"]}
        }
      end)
    end
  end
end
