defmodule Pokedex.Items do
  @moduledoc """
  Documentation for https://pokeapi.co/docs/v2.html/#items-section
  """

  @item_endpoint "/item/"
  @item_attribute_endpoint "/item-attribute/"
  @item_category_endpoint "/item-category/"
  @item_fling_effect_endpoint "/item-fling-effect/"
  @item_pocket_endpoint "/item-pocket/"

  def item(id) when is_number(id) do
    Pokedex.get(@item_endpoint <> to_string(id))
  end
  def item(name) when is_atom(name) do
    name = Pokedex.atom_to_pokedex_string(name)
    Pokedex.get(@item_endpoint <> name)
  end
  def item(name) when is_bitstring(name) do
    Pokedex.get(@item_endpoint <> name)
  end

  def item_attribute(id) when is_number(id) do
    Pokedex.get(@item_attribute_endpoint <> to_string(id))
  end
  def item_attribute(name) when is_atom(name) do
    name = Pokedex.atom_to_pokedex_string(name)
    Pokedex.get(@item_attribute_endpoint <> name)
  end
  def item_attribute(name) when is_bitstring(name) do
    Pokedex.get(@item_attribute_endpoint <> name)
  end

  def item_category(id) when is_number(id) do
    Pokedex.get(@item_category_endpoint <> to_string(id))
  end
  def item_category(name) when is_atom(name) do
    name = Pokedex.atom_to_pokedex_string(name)
    Pokedex.get(@item_category_endpoint <> name)
  end
  def item_category(name) when is_bitstring(name) do
    Pokedex.get(@item_category_endpoint <> name)
  end

  def item_fling_effect(id) when is_number(id) do
    Pokedex.get(@item_fling_effect_endpoint <> to_string(id))
  end
  def item_fling_effect(name) when is_atom(name) do
    name = Pokedex.atom_to_pokedex_string(name)
    Pokedex.get(@item_fling_effect_endpoint <> name)
  end
  def item_fling_effect(name) when is_bitstring(name) do
    Pokedex.get(@item_fling_effect_endpoint <> name)
  end

  def item_pocket(id) when is_number(id) or is_atom(id) do
    Pokedex.get(@item_pocket_endpoint <> to_string(id))
  end
  def item_pocket(name) when is_bitstring(name) do
    Pokedex.get(@item_pocket_endpoint <> name)
  end
end
