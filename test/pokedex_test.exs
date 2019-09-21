defmodule PokedexTest do
  use ExUnit.Case
  doctest Pokedex

  test "convert an underscored separated atom into a minus separated string" do
    atom_to_pokedex_string = Pokedex.atom_to_pokedex_string(:swarm_yes)
    assert atom_to_pokedex_string == "swarm-yes"
  end
end
