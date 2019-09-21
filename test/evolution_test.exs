defmodule EvolutionTest do
  @moduledoc false

  use ExUnit.Case, async: true
  doctest Pokedex.Evolution

  test "get evolution chain by numeric id" do
    assert {:ok, env} = Pokedex.Evolution.evolution_chain(1)
    assert env.status == 200
    assert env.body["id"] == 1
  end

  test "get evolution chain by string id" do
    assert {:ok, env} = Pokedex.Evolution.evolution_chain("1")
    assert env.status == 200
    assert env.body["id"] == 1
  end

  test "get evolution trigger by numeric id" do
    assert {:ok, env} = Pokedex.Evolution.evolution_trigger(1)
    assert env.status == 200
    assert env.body["name"] == "level-up"
  end

  test "get evolution trigger by atom name" do
    assert {:ok, env} = Pokedex.Evolution.evolution_trigger(:level_up)
    assert env.status == 200
    assert env.body["name"] == "level-up"
  end

  test "get evolution trigger by string name" do
    assert {:ok, env} = Pokedex.Evolution.evolution_trigger("level-up")
    assert env.status == 200
    assert env.body["name"] == "level-up"
  end

  test "get not found response for a not found evolution chain" do
    assert {:ok, env} = Pokedex.Evolution.evolution_chain(-1)
    assert env.status == 404
  end

  test "get not found response for a not found evolution trigger" do
    assert {:ok, env} = Pokedex.Evolution.evolution_trigger(:not_an_evolution_trigger)
    assert env.status == 404
  end
end
