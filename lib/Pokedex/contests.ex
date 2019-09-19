defmodule Pokedex.Contests do
  def contest_type(id) when is_number(id) or is_atom(id) do
    Pokedex.get("/contest-type/" <> to_string(id))
  end
  def contest_type(name) when is_bitstring(name) do
    Pokedex.get("/contest-type/" <> name)
  end

  def contest_effect(id) when is_number(id) do
    Pokedex.get("/contest-effect/" <> to_string(id))
  end
  def contest_effect(id) when is_bitstring(id) do
    Pokedex.get("/contest-effect/" <> id)
  end

  def super_contest_effect(id) when is_number(id) do
    Pokedex.get("/super-contest-effect/" <> to_string(id))
  end
  def super_contest_effect(id) when is_bitstring(id) do
    Pokedex.get("/super-contest-effect/" <> id)
  end
end