defmodule ContestsTest do
  @moduledoc false

  use ExUnit.Case, async: true
  doctest Pokedex.Contests

  test "get contest type by numeric id" do
    assert {:ok, env} = Pokedex.Contests.contest_type(1)
    assert env.status == 200
    assert env.body["name"] == "cool"
  end

  test "get contest type by string id" do
    assert {:ok, env} = Pokedex.Contests.contest_type("1")
    assert env.status == 200
    assert env.body["name"] == "cool"
  end

  test "get contest type by atom name" do
    assert {:ok, env} = Pokedex.Contests.contest_type(:cool)
    assert env.status == 200
    assert env.body["name"] == "cool"
  end

  test "get contest type by string name" do
    assert {:ok, env} = Pokedex.Contests.contest_type("cool")
    assert env.status == 200
    assert env.body["name"] == "cool"
  end

  test "get contest effect by numeric id" do
    assert {:ok, env} = Pokedex.Contests.contest_effect(1)
    assert env.status == 200
    assert env.body["id"] == 1
  end

  test "get contest effect by string id" do
    assert {:ok, env} = Pokedex.Contests.contest_effect("1")
    assert env.status == 200
    assert env.body["id"] == 1
  end

  test "get super contest effect by numeric id" do
    assert {:ok, env} = Pokedex.Contests.super_contest_effect(1)
    assert env.status == 200
    assert env.body["id"] == 1
  end

  test "get super contest effect by string id" do
    assert {:ok, env} = Pokedex.Contests.super_contest_effect("1")
    assert env.status == 200
    assert env.body["id"] == 1
  end

  test "get not found response for a not found numeric contest type" do
    assert {:ok, env} = Pokedex.Contests.contest_type(3000)
    assert env.status == 404
  end

  test "get not found response for a not found string contest type" do
    assert {:ok, env} = Pokedex.Contests.contest_type("not cool")
    assert env.status == 404
  end

  test "get not found response for a not found atomic contest type" do
    assert {:ok, env} = Pokedex.Contests.contest_type(:not_cool)
    assert env.status == 404
  end

  test "get not found response for a not found contest effect" do
    assert {:ok, env} = Pokedex.Contests.contest_effect(3000)
    assert env.status == 404
  end

  test "get not found response for a not found super contest effect" do
    assert {:ok, env} = Pokedex.Contests.super_contest_effect(3000)
    assert env.status == 404
  end
end
