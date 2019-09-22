defmodule Pokedex.Encounters do
  @moduledoc """
  Documentation for https://pokeapi.co/docs/v2.html/#encounters-section
  """

  @encounter_method_endpoint "/encounter-method/"
  @encounter_condition_endpoint "/encounter-condition/"
  @encounter_condition_value_endpoint "/encounter-condition-value/"

  def encounter_method(id) when is_number(id) do
    Pokedex.get(@encounter_method_endpoint <> to_string(id))
  end
  def encounter_method(name) when is_atom(name) do
    name = Pokedex.atom_to_pokedex_string(name)
    Pokedex.get(@encounter_method_endpoint <> name)
  end
  def encounter_method(name) when is_bitstring(name) do
    Pokedex.get(@encounter_method_endpoint <> name)
  end

  def encounter_condition(id_name) when is_number(id_name) or is_atom(id_name) do
    Pokedex.get(@encounter_condition_endpoint  <> to_string(id_name))
  end
  def encounter_condition(name) when is_bitstring(name) do
    Pokedex.get(@encounter_condition_endpoint  <> name)
  end

  def encounter_condition_value(id) when is_number(id) do
    Pokedex.get(@encounter_condition_value_endpoint <> to_string(id))
  end
  def encounter_condition_value(name) when is_atom(name) do
    name = Pokedex.atom_to_pokedex_string(name)
    Pokedex.get(@encounter_condition_value_endpoint <> name)
  end
  def encounter_condition_value(name) when is_bitstring(name) do
    Pokedex.get(@encounter_condition_value_endpoint <> name)
  end
end
