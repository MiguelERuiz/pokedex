defmodule GamesTest do
  @moduledoc false

  use ExUnit.Case, async: true
  doctest Pokedex.Games

  test "get generation by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"main_region" => %{"name" => name}}}} = Pokedex.Games.generation(1)
    assert status == 200
    assert name == "kanto"
  end

  test "get generation by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"main_region" => %{"name" => name}}}} = Pokedex.Games.generation("1")
    assert status == 200
    assert name == "kanto"
  end

  test "get generation by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"main_region" => %{"name" => name}}}} = Pokedex.Games.generation(:generation_i)
    assert status == 200
    assert name == "kanto"
  end

  test "get generation by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"main_region" => %{"name" => name}}}} = Pokedex.Games.generation("generation-i")
    assert status == 200
    assert name == "kanto"
  end

  test "get pokedex by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Games.pokedex(1)
    assert status == 200
    assert name == "national"
  end

  test "get pokedex by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Games.pokedex("1")
    assert status == 200
    assert name == "national"
  end

  test "get pokedex by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Games.pokedex(:national)
    assert status == 200
    assert name == "national"
  end

  test "get pokedex by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Games.pokedex("national")
    assert status == 200
    assert name == "national"
  end

  test "get version by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Games.version(1)
    assert status == 200
    assert name == "red"
  end

  test "get version by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Games.version("1")
    assert status == 200
    assert name == "red"
  end

  test "get version by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Games.version(:red)
    assert status == 200
    assert name == "red"
  end

  test "get version by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Games.version("red")
    assert status == 200
    assert name == "red"
  end

  test "get version group by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Games.version_group(1)
    assert status == 200
    assert name == "red-blue"
  end

  test "get version group by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Games.version_group("1")
    assert status == 200
    assert name == "red-blue"
  end

  test "get version group by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Games.version_group(:red_blue)
    assert status == 200
    assert name == "red-blue"
  end

  test "get version group by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Games.version_group("red-blue")
    assert status == 200
    assert name == "red-blue"
  end

  test "get not found response for a not found numeric generation id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Games.generation(-1)
    assert status == 404
  end

  test "get not found response for a not found string generation id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Games.generation("-1")
    assert status == 404
  end

  test "get not found response for a not found atom generation name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Games.generation(:not_a_generation)
    assert status == 404
  end

  test "get not found response for a not found string generation name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Games.generation("not-a-generation")
    assert status == 404
  end

  test "get not found response for a not found numeric pokedex id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Games.pokedex(-1)
    assert status == 404
  end

  test "get not found response for a not found string pokedex id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Games.pokedex("-1")
    assert status == 404
  end

  test "get not found response for a not found atom pokedex name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Games.pokedex(:not_a_pokedex)
    assert status == 404
  end

  test "get not found response for a not found string pokedex name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Games.pokedex("not-a-pokedex")
    assert status == 404
  end

  test "get not found response for a not found numeric version id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Games.version(-1)
    assert status == 404
  end

  test "get not found response for a not found string version id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Games.version("-1")
    assert status == 404
  end

  test "get not found response for a not found atom version name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Games.version(:not_a_version)
    assert status == 404
  end

  test "get not found response for a not found numeric version name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Games.version("not-a-version")
    assert status == 404
  end

  test "get not found response for a not found numeric version group id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Games.version_group(-1)
    assert status == 404
  end

  test "get not found response for a not found string version group id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Games.version_group("-1")
    assert status == 404
  end

  test "get not found response for a not found atom version group name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Games.version_group(:not_a_version_group)
    assert status == 404
  end

  test "get not found response for a not found numeric version group name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Games.version_group("not-a-version-group")
    assert status == 404
  end
end
