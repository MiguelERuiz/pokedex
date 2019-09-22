defmodule MovesTest do
  @moduledoc false

  use ExUnit.Case, async: true

  test "get move by id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Moves.move(1)
    assert status == 200
    assert name == "pound"
  end

  test "get move by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Moves.move(:pound)
    assert status == 200
    assert name == "pound"
  end

  test "get move by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Moves.move("pound")
    assert status == 200
    assert name == "pound"
  end

  test "get move ailment by id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Moves.move_ailment(1)
    assert status == 200
    assert name == "paralysis"
  end

  test "get move ailment by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Moves.move_ailment(:paralysis)
    assert status == 200
    assert name == "paralysis"
  end

  test "get move ailment by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Moves.move_ailment("paralysis")
    assert status == 200
    assert name == "paralysis"
  end

  test "get move battle style by id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Moves.move_battle_style(1)
    assert status == 200
    assert name == "attack"
  end

  test "get move battle style by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Moves.move_battle_style(:attack)
    assert status == 200
    assert name == "attack"
  end

  test "get move battle style by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Moves.move_battle_style("attack")
    assert status == 200
    assert name == "attack"
  end

  test "get move category by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Moves.move_category(1)
    assert status == 200
    assert name == "ailment"
  end

  test "get move category by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Moves.move_category("ailment")
    assert status == 200
    assert name == "ailment"
  end

  test "get move damage class by id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Moves.move_damage_class(2)
    assert status == 200
    assert name == "physical"
  end

  test "get move damage class by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Moves.move_damage_class(:physical)
    assert status == 200
    assert name == "physical"
  end

  test "get move damage class by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Moves.move_damage_class("physical")
    assert status == 200
    assert name == "physical"
  end

  test "get move learn method by id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Moves.move_learn_method(1)
    assert status == 200
    assert name == "level-up"
  end

  test "get move learn method by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Moves.move_learn_method(:level_up)
    assert status == 200
    assert name == "level-up"
  end

  test "get move learn method by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Moves.move_learn_method("level-up")
    assert status == 200
    assert name == "level-up"
  end

  test "get move target by id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Moves.move_target(1)
    assert status == 200
    assert name == "specific-move"
  end

  test "get move target by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Moves.move_target(:specific_move)
    assert status == 200
    assert name == "specific-move"
  end

  test "get move target by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Moves.move_target("specific-move")
    assert status == 200
    assert name == "specific-move"
  end

  test "get not found response for a not found move id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Moves.move(-1)
    assert status == 404
  end

  test "get not found response for a not found move name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Moves.move(:not_a_move)
    assert status == 404
  end

  test "get not found response for a not found move ailment id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Moves.move_ailment(-2)
    assert status == 404
  end

  test "get not found response for a not found move ailment name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Moves.move_ailment(:not_a_move_ailment)
    assert status == 404
  end

  test "get not found response for a not found move battle style id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Moves.move_battle_style(-1)
    assert status == 404
  end

  test "get not found response for a not found move battle style name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Moves.move_battle_style(:not_a_move_battle_style)
    assert status == 404
  end

  test "get not found response for a not found move category id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Moves.move_category(-1)
    assert status == 404
  end

  test "get not found response for a not found move category name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Moves.move_category("not-a-move-category")
    assert status == 404
  end

  test "get not found response for a not found move damage class id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Moves.move_damage_class(-1)
    assert status == 404
  end

  test "get not found response for a not found move damage class atom name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Moves.move_damage_class(:not_a_move_damage_class)
    assert status == 404
  end

  test "get not found response for a not found move learn method id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Moves.move(-1)
    assert status == 404
  end

  test "get not found response for a not found move learn method name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Moves.move(:not_a_move_learn_method)
    assert status == 404
  end

  test "get not found response for a not found move target id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Moves.move_target(-1)
    assert status == 404
  end

  test "get not found response for a not found move target name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Moves.move_target(:not_a_move_target)
    assert status == 404
  end
end
