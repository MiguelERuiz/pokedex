defmodule Pokedex.Contests do
  @moduledoc """
  Documentation for https://pokeapi.co/docs/v2.html/#contests-section
  """

  @contest_type_endpoint "/contest-type/"
  @contest_effect_endpoint "/contest-effect/"
  @super_contest_effect_endpoint "/super-contest-effect/"

  def contest_type(id) when is_number(id) or is_atom(id) do
    Pokedex.get(@contest_type_endpoint <> to_string(id))
  end
  def contest_type(name) when is_bitstring(name) do
    Pokedex.get(@contest_type_endpoint <> name)
  end

  def contest_effect(id) when is_number(id) do
    Pokedex.get(@contest_effect_endpoint <> to_string(id))
  end
  def contest_effect(id) when is_bitstring(id) do
    Pokedex.get(@contest_effect_endpoint <> id)
  end

  def super_contest_effect(id) when is_number(id) do
    Pokedex.get(@super_contest_effect_endpoint <> to_string(id))
  end
  def super_contest_effect(id) when is_bitstring(id) do
    Pokedex.get(@super_contest_effect_endpoint <> id)
  end
end
