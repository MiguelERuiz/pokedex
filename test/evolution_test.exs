defmodule EvolutionTest do
  @moduledoc false

  use ExUnit.Case, async: true
  doctest Pokedex.Evolution

  test "get evolution chain by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"id" => id}}} = Pokedex.Evolution.evolution_chain(1)
    assert status == 200
    assert id == 1
  end

  test "get evolution chain by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"id" => id}}} = Pokedex.Evolution.evolution_chain("1")
    assert status == 200
    assert id == 1
  end

  test "get evolution trigger by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Evolution.evolution_trigger(1)
    assert status == 200
    assert name == "level-up"
  end

  test "get evolution trigger by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Evolution.evolution_trigger(:level_up)
    assert status == 200
    assert name == "level-up"
  end

  test "get evolution trigger by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Evolution.evolution_trigger("level-up")
    assert status == 200
    assert name == "level-up"
  end

  test "get not found response for a not found numeric evolution chain id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Evolution.evolution_chain(-1)
    assert status == 404
  end

  test "get not found response for a not found string evolution chain id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Evolution.evolution_chain("-1")
    assert status == 404
  end

  test "get not found response for a not found numeric evolution trigger id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Evolution.evolution_trigger(-1)
    assert status == 404
  end

  test "get not found response for a not found string evolution trigger id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Evolution.evolution_trigger("-1")
    assert status == 404
  end

  test "get not found response for a not found atom evolution trigger name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Evolution.evolution_trigger(:not_an_evolution_trigger)
    assert status == 404
  end

  test "get not found response for a not found string evolution trigger name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Evolution.evolution_trigger("not-an-evolution-trigger")
    assert status == 404
  end
end
