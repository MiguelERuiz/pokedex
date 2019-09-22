defmodule BerriesTest do
  @moduledoc false

  use ExUnit.Case, async: true
  doctest Pokedex.Berries

  test "get berry info by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Berries.berry(1)
    assert status == 200
    assert name == "cheri"
  end

  test "get berry info by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Berries.berry("1")
    assert status == 200
    assert name == "cheri"
  end

  test "get berry info by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Berries.berry(:cheri)
    assert status == 200
    assert name == "cheri"
  end

  test "get berry info by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Berries.berry("cheri")
    assert status == 200
    assert name == "cheri"
  end

  test "get berry firmness by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Berries.berry_firmness(1)
    assert status == 200
    assert name == "very-soft"
  end

  test "get berry firmness by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Berries.berry_firmness("1")
    assert status == 200
    assert name == "very-soft"
  end

  test "get berry firmness by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Berries.berry_firmness(:very_soft)
    assert status == 200
    assert name == "very-soft"
  end

  test "get berry firmness by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Berries.berry_firmness("very-soft")
    assert status == 200
    assert name == "very-soft"
  end

  test "get berry flavor by numeric numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Berries.berry_flavor(1)
    assert status == 200
    assert name == "spicy"
  end

  test "get berry flavor by numeric string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Berries.berry_flavor("1")
    assert status == 200
    assert name == "spicy"
  end

  test "get berry flavor by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Berries.berry_flavor(:spicy)
    assert status == 200
    assert name == "spicy"
  end

  test "get berry flavor by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Berries.berry_flavor("spicy")
    assert status == 200
    assert name == "spicy"
  end

  test "get not found response for a not found berry numeric id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Berries.berry(-1)
    assert status == 404
  end

  test "get not found response for a not found string berry id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Berries.berry("-1")
    assert status == 404
  end

  test "get not found response for a not found atom berry name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Berries.berry(:not_a_berry)
    assert status == 404
  end

  test "get not found response for a not found string berry name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Berries.berry("not-a-berry")
    assert status == 404
  end

  test "get not found response for a not found numeric berry firmness id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Berries.berry_firmness(-1)
    assert status == 404
  end

  test "get not found response for a not found string berry firmness id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Berries.berry_firmness("-1")
    assert status == 404
  end

  test "get not found response for a not found atom berry firmness name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Berries.berry_firmness(:not_a_firmness)
    assert status == 404
  end

  test "get not found response for a not found string berry firmness name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Berries.berry_firmness("not-a-firmness")
    assert status == 404
  end

  test "get not found response for a not found numeric berry flavor id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Berries.berry_flavor(-1)
    assert status == 404
  end

  test "get not found response for a not found string berry flavor id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Berries.berry_flavor(-1)
    assert status == 404
  end

  test "get not found response for a not found atom berry flavor name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Berries.berry_flavor(:not_a_flavor)
    assert status == 404
  end

  test "get not found response for a not found string berry flavor name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Berries.berry_flavor("not-a-flavor")
    assert status == 404
  end
end
