defmodule Pokedex.Evolution do
  @moduledoc """
  Documentation for Evolution section https://pokeapi.co/docs/v2.html/#evolution-section
  """

  @evolution_chain_endpoint "/evolution-chain/"
  @evolution_trigger_endpoint "/evolution-trigger/"

  def evolution_chain(id) when is_number(id) do
    Pokedex.get(@evolution_chain_endpoint <> to_string(id))
  end
  def evolution_chain(name) when is_bitstring(name) do
    Pokedex.get(@evolution_chain_endpoint <> name)
  end

  def evolution_trigger(id) when is_number(id) do
    Pokedex.get(@evolution_trigger_endpoint <> to_string(id))
  end
  def evolution_trigger(name) when is_atom(name) do
    name = Pokedex.atom_to_pokedex_string(name)
    Pokedex.get(@evolution_trigger_endpoint <> name)
  end
  def evolution_trigger(name) when is_bitstring(name) do
    Pokedex.get(@evolution_trigger_endpoint <> name)
  end
end
