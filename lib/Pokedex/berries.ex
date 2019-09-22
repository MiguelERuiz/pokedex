defmodule Pokedex.Berries do
  @moduledoc """
  Documentation for https://pokeapi.co/docs/v2.html/#berries-section
  """

  @berry_endpoint "/berry/"
  @berry_firmness_endpoint "/berry-firmness/"
  @berry_flavor_endpoint "/berry-flavor/"

  def berry(id_name) when is_number(id_name) or is_atom(id_name) do
    Pokedex.get(@berry_endpoint <> to_string(id_name))
  end
  def berry(name) when is_bitstring(name) do
    Pokedex.get(@berry_endpoint <> name)
  end

  def berry_firmness(id) when is_number(id) do
    Pokedex.get(@berry_firmness_endpoint  <> to_string(id))
  end
  def berry_firmness(name) when is_atom(name) do
    name = Pokedex.atom_to_pokedex_string(name)
    Pokedex.get(@berry_firmness_endpoint  <> name)
  end
  def berry_firmness(name) when is_bitstring(name) do
    Pokedex.get(@berry_firmness_endpoint  <> name)
  end

  def berry_flavor(id_name) when is_number(id_name) or is_atom(id_name) do
    Pokedex.get(@berry_flavor_endpoint  <> to_string(id_name))
  end
  def berry_flavor(name) when is_bitstring(name) do
    Pokedex.get(@berry_flavor_endpoint  <> name)
  end
end
