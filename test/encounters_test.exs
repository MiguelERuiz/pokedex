defmodule EncountersTest do
  @moduledoc false

  use ExUnit.Case, async: true
  doctest Pokedex.Encounters

  test "get encounter method by numeric id" do
    assert {:ok, env} = Pokedex.Encounters.encounter_method(3)
    assert env.status == 200
    assert env.body["name"] == "good-rod"
  end

  test "get encounter method by string id" do
    assert {:ok, env} = Pokedex.Encounters.encounter_method("3")
    assert env.status == 200
    assert env.body["name"] == "good-rod"
  end

  test "get encounter method by atom name" do
    assert {:ok, env} = Pokedex.Encounters.encounter_method(:good_rod)
    assert env.status == 200
    assert env.body["name"] == "good-rod"
  end

  test "get encounter method by string name" do
    assert {:ok, env} = Pokedex.Encounters.encounter_method("good-rod")
    assert env.status == 200
    assert env.body["name"] == "good-rod"
  end

  test "get encounter condition by numeric id" do
    assert {:ok, env} = Pokedex.Encounters.encounter_condition(1)
    assert env.status == 200
    assert env.body["name"] == "swarm"
  end

  test "get encounter condition by string id" do
    assert {:ok, env} = Pokedex.Encounters.encounter_condition("1")
    assert env.status == 200
    assert env.body["name"] == "swarm"
  end

  test "get encounter condition by atom name" do
    assert {:ok, env} = Pokedex.Encounters.encounter_condition(:swarm)
    assert env.status == 200
    assert env.body["name"] == "swarm"
  end

  test "get encounter condition by string name" do
    assert {:ok, env} = Pokedex.Encounters.encounter_condition("swarm")
    assert env.status == 200
    assert env.body["name"] == "swarm"
  end

  test "get encounter condition value by numeric id" do
    assert {:ok, env} = Pokedex.Encounters.encounter_condition_value(1)
    assert env.status == 200
    assert env.body["name"] == "swarm-yes"
  end

  test "get encounter condition value by string id" do
    assert {:ok, env} = Pokedex.Encounters.encounter_condition_value("1")
    assert env.status == 200
    assert env.body["name"] == "swarm-yes"
  end

  test "get encounter condition value by atom name" do
    assert {:ok, env} = Pokedex.Encounters.encounter_condition_value(:swarm_yes)
    assert env.status == 200
    assert env.body["name"] == "swarm-yes"
  end

  test "get encounter condition value by string name" do
    assert {:ok, env} = Pokedex.Encounters.encounter_condition_value("swarm-yes")
    assert env.status == 200
    assert env.body["name"] == "swarm-yes"
  end

  test "get not found response for a not found numeric encounter method id" do
    assert {:ok, env} = Pokedex.Encounters.encounter_method(3000)
    assert env.status == 404
  end

  test "get not found response for a not found string encounter method id" do
    assert {:ok, env} = Pokedex.Encounters.encounter_method("3000")
    assert env.status == 404
  end

  test "get not found response for a not found atom encounter method name" do
    assert {:ok, env} = Pokedex.Encounters.encounter_method(:not_an_encounter_method)
    assert env.status == 404
  end

  test "get not found response for a not found string encounter method name" do
    assert {:ok, env} = Pokedex.Encounters.encounter_method("not-an-encounter-method")
    assert env.status == 404
  end

  test "get not found response for a not found numeric encounter condition id" do
    assert {:ok, env} = Pokedex.Encounters.encounter_condition(3000)
    assert env.status == 404
  end

  test "get not found response for a not found string encounter condition id" do
    assert {:ok, env} = Pokedex.Encounters.encounter_condition("3000")
    assert env.status == 404
  end

  test "get not found response for a not found atom encounter condition name" do
    assert {:ok, env} = Pokedex.Encounters.encounter_condition(:not_an_encounter_condition)
    assert env.status == 404
  end

  test "get not found response for a not found string encounter condition name" do
    assert {:ok, env} = Pokedex.Encounters.encounter_condition("not-an-encounter-condition")
    assert env.status == 404
  end

  test "get not found response for a not found numeric encounter condition value id" do
    assert {:ok, env} = Pokedex.Encounters.encounter_condition_value(3000)
    assert env.status == 404
  end

  test "get not found response for a not found string encounter condition value id" do
    assert {:ok, env} = Pokedex.Encounters.encounter_condition_value("3000")
    assert env.status == 404
  end

  test "get not found response for a not found atom encounter condition value name" do
    assert {:ok, env} = Pokedex.Encounters.encounter_condition_value(:not_an_encounter_condition_value)
    assert env.status == 404
  end

  test "get not found response for a not found string encounter condition value name" do
    assert {:ok, env} = Pokedex.Encounters.encounter_condition_value("not-an-encounter-condition-value")
    assert env.status == 404
  end
end
