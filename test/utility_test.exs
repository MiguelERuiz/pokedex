defmodule UtilityTest do
  @moduledoc false

  use ExUnit.Case, async: true

  test "get language by id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"iso3166" => iso3166}}} = Pokedex.Utility.language(7)
    assert status == 200
    assert iso3166 == "es"
  end

  test "get language by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"iso3166" => iso3166}}} = Pokedex.Utility.language(:es)
    assert status == 200
    assert iso3166 == "es"
  end

  test "get language by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"iso3166" => iso3166}}} = Pokedex.Utility.language("es")
    assert status == 200
    assert iso3166 == "es"
  end

  test "get not found response for a not found language id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Utility.language(-1)
    assert status == 404
  end

  test "get not found response for a not found language atom name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Utility.language(:not_a_language)
    assert status == 404
  end

  test "get not found response for a not found language string name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Utility.language("not-a-language")
    assert status == 404
  end
end
