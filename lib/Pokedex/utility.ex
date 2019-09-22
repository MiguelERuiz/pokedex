defmodule Pokedex.Utility do
  @moduledoc """
  Documentation for https://pokeapi.co/docs/v2.html/#utility-section
  """

  @language_endpoint "/language/"

  def language(id) when is_number(id) do
    Pokedex.get(@language_endpoint <> to_string(id))
  end
  def language(name) when is_atom(name) do
    name = Pokedex.atom_to_pokedex_string(name)
    Pokedex.get(@language_endpoint <> name)
  end
  def language(name) when is_bitstring(name) do
    Pokedex.get(@language_endpoint <> name)
  end
end
