defmodule Pokedex.Locations do
  @moduledoc """
  Documentation for https://pokeapi.co/docs/v2.html/#locations-section
  """

  @location_endpoint "/location/"
  @location_area_endpoint "/location-area/"
  @pal_park_area_endpoint "/pal-park-area/"
  @region_endpoint "/region/"

  def location(id) when is_number(id) do
    Pokedex.get(@location_endpoint <> to_string(id))
  end
  def location(name) when is_atom(name) do
    name = Pokedex.atom_to_pokedex_string(name)
    Pokedex.get(@location_endpoint <> name)
  end
  def location(name) when is_bitstring(name) do
    Pokedex.get(@location_endpoint <> name)
  end

  def location_area(id) when is_number(id) do
    Pokedex.get(@location_area_endpoint <> to_string(id))
  end
  def location_area(name) when is_atom(name) do
    name = Pokedex.atom_to_pokedex_string(name)
    Pokedex.get(@location_area_endpoint <> name)
  end
  def location_area(name) when is_bitstring(name) do
    Pokedex.get(@location_area_endpoint <> name)
  end

  def pal_park_area(id) when is_number(id) or is_atom(id) do
    Pokedex.get(@pal_park_area_endpoint <> to_string(id))
  end
  def pal_park_area(name) when is_bitstring(name) do
    Pokedex.get(@pal_park_area_endpoint <> name)
  end

  def region(id) when is_number(id) or is_atom(id) do
    Pokedex.get(@region_endpoint <> to_string(id))
  end
  def region(name) when is_bitstring(name) do
    Pokedex.get(@region_endpoint <> name)
  end
end
