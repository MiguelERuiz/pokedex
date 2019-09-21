defmodule BerriesTest do
  @moduledoc false

  use ExUnit.Case, async: true
  doctest Pokedex.Berries

  test "get berry info by numeric id" do
    assert {:ok, env} = Pokedex.Berries.berry(1)
    assert env.status == 200
    assert env.body["item"]["name"] == "cheri-berry"
  end

  test "get berry info by string id" do
    assert {:ok, env} = Pokedex.Berries.berry("1")
    assert env.status == 200
    assert env.body["item"]["name"] == "cheri-berry"
  end

  test "get berry info by atom name" do
    assert {:ok, env} = Pokedex.Berries.berry(:cheri)
    assert env.status == 200
    assert env.body["item"]["name"] == "cheri-berry"
  end

  test "get berry info by string name" do
    assert {:ok, env} = Pokedex.Berries.berry("cheri")
    assert env.status == 200
    assert env.body["item"]["name"] == "cheri-berry"
  end

  test "get berry firmness by numeric id" do
    assert {:ok, env} = Pokedex.Berries.berry_firmness(1)
    assert env.status == 200
    assert env.body["name"] == "very-soft"
  end

  test "get berry firmness by string id" do
    assert {:ok, env} = Pokedex.Berries.berry_firmness("1")
    assert env.status == 200
    assert env.body["name"] == "very-soft"
  end

  test "get berry firmness by atom name" do
    assert {:ok, env} = Pokedex.Berries.berry_firmness(:very_soft)
    assert env.status == 200
    assert env.body["name"] == "very-soft"
  end

  test "get berry firmness by string name" do
    assert {:ok, env} = Pokedex.Berries.berry_firmness("very-soft")
    assert env.status == 200
    assert env.body["name"] == "very-soft"
  end

  test "get berry flavor by numeric numeric id" do
    assert {:ok, env} = Pokedex.Berries.berry_flavor(1)
    assert env.status == 200
    assert env.body["name"] == "spicy"
  end

  test "get berry flavor by numeric string id" do
    assert {:ok, env} = Pokedex.Berries.berry_flavor("1")
    assert env.status == 200
    assert env.body["name"] == "spicy"
  end

  test "get berry flavor by atom name" do
    assert {:ok, env} = Pokedex.Berries.berry_flavor(:spicy)
    assert env.status == 200
    assert env.body["name"] == "spicy"
  end

  test "get berry flavor by string name" do
    assert {:ok, env} = Pokedex.Berries.berry_flavor("spicy")
    assert env.status == 200
    assert env.body["name"] == "spicy"
  end

  test "get not found response for a not found berry id" do
    assert {:ok, env} = Pokedex.Berries.berry(1234)
    assert env.status == 404
  end

  test "get not found response for a not found atom berry name" do
    assert {:ok, env} = Pokedex.Berries.berry(:bad_berry)
    assert env.status == 404
  end

  test "get not found response for a not found string berry name" do
    assert {:ok, env} = Pokedex.Berries.berry("bad-berry")
    assert env.status == 404
  end

  test "get not found response for a not found numeric berry firmness id" do
    assert {:ok, env} = Pokedex.Berries.berry_firmness(1234)
    assert env.status == 404
  end

  test "get not found response for a not found string berry firmness id" do
    assert {:ok, env} = Pokedex.Berries.berry_firmness("12345")
    assert env.status == 404
  end

  test "get not found response for a not found atom berry firmness name" do
    assert {:ok, env} = Pokedex.Berries.berry_firmness(:wrong_firmness)
    assert env.status == 404
  end

  test "get not found response for a not found string berry firmness name" do
    assert {:ok, env} = Pokedex.Berries.berry_firmness("wrong-firmness")
    assert env.status == 404
  end

  test "get not found response for a not found berry flavor id" do
    assert {:ok, env} = Pokedex.Berries.berry_flavor(1234)
    assert env.status == 404
  end

  test "get not found response for a not found atom berry flavor name" do
    assert {:ok, env} = Pokedex.Berries.berry_flavor(:wrong_flavor)
    assert env.status == 404
  end

  test "get not found response for a not found string berry flavor name" do
    assert {:ok, env} = Pokedex.Berries.berry_flavor("wrong-flavor")
    assert env.status == 404
  end
end
