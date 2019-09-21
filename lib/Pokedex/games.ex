defmodule Pokedex.Games do
  @moduledoc """
  Documentation for https://pokeapi.co/docs/v2.html/#games-section
  """

  @generation_endpoint "/generation/"
  @pokedex_endpoint "/pokedex/"
  @version_endpoint "/version/"
  @version_group_endpoint "/version-group/"

  def generation(id) when is_number(id) do
    Pokedex.get(@generation_endpoint <> to_string(id))
  end
  def generation(name) when is_atom(name) do
    name = Pokedex.atom_to_pokedex_string(name)
    Pokedex.get(@generation_endpoint <> name)
  end
  def generation(name) when is_bitstring(name) do
    Pokedex.get(@generation_endpoint <> name)
  end

  def pokedex(id) when is_number(id) do
    Pokedex.get(@pokedex_endpoint <> to_string(id))
  end
  def pokedex(name) when is_atom(name) do
    name = Pokedex.atom_to_pokedex_string(name)
    Pokedex.get(@pokedex_endpoint <> name)
  end
  def pokedex(name) when is_bitstring(name) do
    Pokedex.get(@pokedex_endpoint <> name)
  end

  def version(id) when is_number(id) or is_atom(id) do
    Pokedex.get(@version_endpoint <> to_string(id))
  end
  def version(name) when is_bitstring(name) do
    Pokedex.get(@version_endpoint <> name)
  end

  def version_group(id) when is_number(id) do
    Pokedex.get(@version_group_endpoint <> to_string(id))
  end
  def version_group(name) when is_atom(name) do
    name = Pokedex.atom_to_pokedex_string(name)
    Pokedex.get(@version_group_endpoint <> name)
  end
  def version_group(name) when is_bitstring(name) do
    Pokedex.get(@version_group_endpoint <> name)
  end
end
