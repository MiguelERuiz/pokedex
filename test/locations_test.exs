defmodule LocationsTest do
  @moduledoc false

  use ExUnit.Case, async: true
  doctest Pokedex.Locations

  test "get location by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Locations.location(1)
    assert status == 200
    assert name == "canalave-city"
  end

  test "get location by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Locations.location("1")
    assert status == 200
    assert name == "canalave-city"
  end

  test "get location by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Locations.location(:canalave_city)
    assert status == 200
    assert name == "canalave-city"
  end

  test "get location by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Locations.location("canalave-city")
    assert status == 200
    assert name == "canalave-city"
  end

  test "get location area by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Locations.location_area(1)
    assert status == 200
    assert name == "canalave-city-area"
  end

  test "get location area by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Locations.location_area("1")
    assert status == 200
    assert name == "canalave-city-area"
  end

  test "get location area by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Locations.location_area(:canalave_city_area)
    assert status == 200
    assert name == "canalave-city-area"
  end

  test "get location area by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Locations.location_area("canalave-city-area")
    assert status == 200
    assert name == "canalave-city-area"
  end

  test "get pal park area by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Locations.pal_park_area(1)
    assert status == 200
    assert name == "forest"
  end

  test "get pal park area by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Locations.pal_park_area("1")
    assert status == 200
    assert name == "forest"
  end

  test "get pal park area by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Locations.pal_park_area(:forest)
    assert status == 200
    assert name == "forest"
  end

  test "get pal park area by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Locations.pal_park_area("forest")
    assert status == 200
    assert name == "forest"
  end

  test "get region by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Locations.region(1)
    assert status == 200
    assert name == "kanto"
  end

  test "get region by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Locations.region("1")
    assert status == 200
    assert name == "kanto"
  end

  test "get region by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Locations.region(:kanto)
    assert status == 200
    assert name == "kanto"
  end

  test "get region by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Locations.region("kanto")
    assert status == 200
    assert name == "kanto"
  end

  test "get not found response for a not found numeric location id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Locations.location(-1)
    assert status == 404
  end

  test "get not found response for a not found string location id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Locations.location("-1")
    assert status == 404
  end

  test "get not found response for a not found atom location name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Locations.location(:not_a_location)
    assert status == 404
  end

  test "get not found response for a not found string location name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Locations.location("not-a-location")
    assert status == 404
  end

  test "get not found response for a not found numeric location area id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Locations.location_area(-1)
    assert status == 404
  end

  test "get not found response for a not found string location area id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Locations.location_area("-1")
    assert status == 404
  end

  test "get not found response for a not found atom location area name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Locations.location_area(:not_a_location_area)
    assert status == 404
  end

  test "get not found response for a not found string location area name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Locations.location_area("not-a-location-area")
    assert status == 404
  end

  test "get not found response for a not found numeric pal park area id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Locations.pal_park_area(-1)
    assert status == 404
  end

  test "get not found response for a not found string pal park area id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Locations.pal_park_area("-1")
    assert status == 404
  end

  test "get not found response for a not found atom pal park area name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Locations.pal_park_area(:not_a_pal_park_area)
    assert status == 404
  end

  test "get not found response for a not found string pal park area name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Locations.pal_park_area("not-a-pal-park-area")
    assert status == 404
  end

  test "get not found response for a not found numeric region id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Locations.region(-1)
    assert status == 404
  end

  test "get not found response for a not found string region id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Locations.region("-1")
    assert status == 404
  end

  test "get not found response for a not found atom region name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Locations.region(:not_a_region)
    assert status == 404
  end

  test "get not found response for a not found string region name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Locations.region("not-a-region")
    assert status == 404
  end
end
