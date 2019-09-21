defmodule Pokedex.Encounters do
  def encounter_method(id) when is_number(id) do
    Pokedex.get("/encounter-method/" <> to_string(id))
  end
  def encounter_method(name) when is_atom(name) do
    name = (name |> Atom.to_string) |> String.replace("_", "-")
    Pokedex.get("/encounter-method/" <> name)
  end
  def encounter_method(name) when is_bitstring(name) do
    Pokedex.get("/encounter-method/" <> name)
  end

  def encounter_condition(id) when is_number(id) or is_atom(id) do
    Pokedex.get("/encounter-condition/" <> to_string(id))
  end
  def encounter_condition(name) when is_bitstring(name) do
    Pokedex.get("/encounter-condition/" <> name)
  end

  def encounter_condition_value(id) when is_number(id) do
    Pokedex.get("/encounter-condition-value/" <> to_string(id))
  end
  def encounter_condition_value(name) when is_atom(name) do
    name = (name |> Atom.to_string) |> String.replace("_", "-")
    Pokedex.get("/encounter-condition-value/" <> name)
  end
  def encounter_condition_value(name) when is_bitstring(name) do
    Pokedex.get("/encounter-condition-value/" <> name)
  end
end