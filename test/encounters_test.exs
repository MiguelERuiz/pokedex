defmodule EncountersTest do
  @moduledoc false

  use ExUnit.Case, async: true
  doctest Pokedex.Encounters

  test "get encounter method by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Encounters.encounter_method(3)
    assert status == 200
    assert name == "good-rod"
  end

  test "get encounter method by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Encounters.encounter_method("3")
    assert status == 200
    assert name == "good-rod"
  end

  test "get encounter method by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Encounters.encounter_method(:good_rod)
    assert status == 200
    assert name == "good-rod"
  end

  test "get encounter method by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Encounters.encounter_method("good-rod")
    assert status == 200
    assert name == "good-rod"
  end

  test "get encounter condition by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Encounters.encounter_condition(1)
    assert status == 200
    assert name == "swarm"
  end

  test "get encounter condition by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Encounters.encounter_condition("1")
    assert status == 200
    assert name == "swarm"
  end

  test "get encounter condition by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Encounters.encounter_condition(:swarm)
    assert status == 200
    assert name == "swarm"
  end

  test "get encounter condition by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Encounters.encounter_condition("swarm")
    assert status == 200
    assert name == "swarm"
  end

  test "get encounter condition value by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Encounters.encounter_condition_value(1)
    assert status == 200
    assert name == "swarm-yes"
  end

  test "get encounter condition value by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Encounters.encounter_condition_value("1")
    assert status == 200
    assert name == "swarm-yes"
  end

  test "get encounter condition value by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Encounters.encounter_condition_value(:swarm_yes)
    assert status == 200
    assert name == "swarm-yes"
  end

  test "get encounter condition value by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Encounters.encounter_condition_value("swarm-yes")
    assert status == 200
    assert name == "swarm-yes"
  end

  test "get not found response for a not found numeric encounter method id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Encounters.encounter_method(-1)
    assert status == 404
  end

  test "get not found response for a not found string encounter method id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Encounters.encounter_method("-1")
    assert status == 404
  end

  test "get not found response for a not found atom encounter method name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Encounters.encounter_method(:not_an_encounter_method)
    assert status == 404
  end

  test "get not found response for a not found string encounter method name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Encounters.encounter_method("not-an-encounter-method")
    assert status == 404
  end

  test "get not found response for a not found numeric encounter condition id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Encounters.encounter_condition(-1)
    assert status == 404
  end

  test "get not found response for a not found string encounter condition id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Encounters.encounter_condition("-1")
    assert status == 404
  end

  test "get not found response for a not found atom encounter condition name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Encounters.encounter_condition(:not_an_encounter_condition)
    assert status == 404
  end

  test "get not found response for a not found string encounter condition name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Encounters.encounter_condition("not-an-encounter-condition")
    assert status == 404
  end

  test "get not found response for a not found numeric encounter condition value id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Encounters.encounter_condition_value(-1)
    assert status == 404
  end

  test "get not found response for a not found string encounter condition value id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Encounters.encounter_condition_value("-1")
    assert status == 404
  end

  test "get not found response for a not found atom encounter condition value name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Encounters.encounter_condition_value(:not_an_encounter_cond_val)
    assert status == 404
  end

  test "get not found response for a not found string encounter condition value name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Encounters.encounter_condition_value("not-an-encounter-cond-val")
    assert status == 404
  end
end
