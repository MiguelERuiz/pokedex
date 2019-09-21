defmodule Pokedex.Evolution do
  @moduledoc """
  Documentation for Evolution section https://pokeapi.co/docs/v2.html/#evolution-section
  """
  def evolution_chain(id) when is_number(id) do
    Pokedex.get("/evolution-chain/" <> to_string(id))
  end
  def evolution_chain(name) when is_bitstring(name) do
    Pokedex.get("/evolution-chain/" <> name)
  end

  def evolution_trigger(id) when is_number(id) do
    Pokedex.get("/evolution-trigger/" <> to_string(id))
  end
  def evolution_trigger(name) when is_atom(name) do
    name = Pokedex.atom_to_pokedex_string(name)
    Pokedex.get("/evolution-trigger/" <> name)
  end
  def evolution_trigger(name) when is_bitstring(name) do
    Pokedex.get("/evolution-trigger/" <> name)
  end
end
