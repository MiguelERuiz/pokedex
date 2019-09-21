defmodule ContestsTest do
  @moduledoc false

  use ExUnit.Case, async: true
  doctest Pokedex.Contests

  test "get contest type by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: body}} = Pokedex.Contests.contest_type(1)
    assert status == 200
    assert body["name"] == "cool"
  end

  test "get contest type by string id" do
    assert {:ok, %Tesla.Env{status: status, body: body}} = Pokedex.Contests.contest_type("1")
    assert status == 200
    assert body["name"] == "cool"
  end

  test "get contest type by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: body}} = Pokedex.Contests.contest_type(:cool)
    assert status == 200
    assert body["name"] == "cool"
  end

  test "get contest type by string name" do
    assert {:ok, %Tesla.Env{status: status, body: body}} = Pokedex.Contests.contest_type("cool")
    assert status == 200
    assert body["name"] == "cool"
  end

  test "get contest effect by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: body}} = Pokedex.Contests.contest_effect(1)
    assert status == 200
    assert body["id"] == 1
  end

  test "get contest effect by string id" do
    assert {:ok, %Tesla.Env{status: status, body: body}} = Pokedex.Contests.contest_effect("1")
    assert status == 200
    assert body["id"] == 1
  end

  test "get super contest effect by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: body}} = Pokedex.Contests.super_contest_effect(1)
    assert status == 200
    assert body["id"] == 1
  end

  test "get super contest effect by string id" do
    assert {:ok, %Tesla.Env{status: status, body: body}} = Pokedex.Contests.super_contest_effect("1")
    assert status == 200
    assert body["id"] == 1
  end

  test "get not found response for a not found numeric contest type id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Contests.contest_type(-1)
    assert status == 404
  end

  test "get not found response for a not found string contest type id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Contests.contest_type("-1")
    assert status == 404
  end

  test "get not found response for a not found atom contest type name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Contests.contest_type(:not_a_contest_type)
    assert status == 404
  end

  test "get not found response for a not found string contest type name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Contests.contest_type("not-a-contest-type")
    assert status == 404
  end

  test "get not found response for a not found numeric contest effect id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Contests.contest_effect(-1)
    assert status == 404
  end

  test "get not found response for a not found string contest effect id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Contests.contest_effect("-1")
    assert status == 404
  end

  test "get not found response for a not found numeric super contest effect id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Contests.super_contest_effect(-1)
    assert status == 404
  end

  test "get not found response for a not found string super contest effect id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Contests.super_contest_effect("-1")
    assert status == 404
  end
end
