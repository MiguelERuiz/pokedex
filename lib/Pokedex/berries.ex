defmodule Pokedex.Berries do
  @moduledoc """
  Documentation for https://pokeapi.co/docs/v2.html/#berries-section
  """
  def berry(id) when is_number(id) or is_atom(id) do
    Pokedex.get("/berry/" <> to_string(id))
  end
  def berry(name) when is_bitstring(name) do
    Pokedex.get("/berry/" <> name)
  end

  def berry_firmness(id) when is_number(id) do
    Pokedex.get("/berry-firmness/" <> to_string(id))
  end
  def berry_firmness(name) when is_atom(name) do
    name = Pokedex.atom_to_pokedex_string(name)
    Pokedex.get("/berry-firmness/" <> name)
  end
  def berry_firmness(name) when is_bitstring(name) do
    Pokedex.get("/berry-firmness/" <> name)
  end

  def berry_flavor(id) when is_number(id) or is_atom(id) do
    Pokedex.get("/berry-flavor/" <> to_string(id))
  end
  def berry_flavor(name) when is_bitstring(name) do
    Pokedex.get("/berry-flavor/" <> name)
  end
end
