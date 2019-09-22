defmodule Pokedex.Pokemon do
  @moduledoc """
  Documentation for https://pokeapi.co/docs/v2.html/#pokemon-section
  """

  @ability_endpoint "/ability/"
  @characteristic_endpoint "/characteristic/"
  @egg_group_endpoint "/egg-group/"
  @gender_endpoint "/gender/"
  @growth_rate_endpoint "/growth-rate/"
  @nature_endpoint "/nature/"
  @pokeathlon_stat_endpoint "/pokeathlon-stat/"
  @pokemon_endpoint "/pokemon/"
  @pokemon_color_endpoint "/pokemon-color/"
  @pokemon_form_endpoint "/pokemon-form/"
  @pokemon_habitat_endpoint "/pokemon-habitat/"
  @pokemon_shape_endpoint "/pokemon-shape/"
  @pokemon_species_endpoint "/pokemon-species/"
  @stat_endpoint "/stat/"
  @type_endpoint "/type/"

  def ability(id) when is_number(id) do
    Pokedex.get(@ability_endpoint <> to_string(id))
  end
  def ability(name) when is_atom(name) do
    name = Pokedex.atom_to_pokedex_string(name)
    Pokedex.get(@ability_endpoint <> name)
  end
  def ability(name) when is_bitstring(name) do
    Pokedex.get(@ability_endpoint <> name)
  end

  def characteristic(id) when is_number(id) do
    Pokedex.get(@characteristic_endpoint <> to_string(id))
  end
  def characteristic(id) when is_bitstring(id) do
    Pokedex.get(@characteristic_endpoint <> id)
  end

  def egg_group(id) when is_number(id) do
    Pokedex.get(@egg_group_endpoint <> to_string(id))
  end
  def egg_group(name)  when is_atom(name) do
    name = Pokedex.atom_to_pokedex_string(name)
    Pokedex.get(@egg_group_endpoint <> name)
  end
  def egg_group(name) when is_bitstring(name) do
    Pokedex.get(@egg_group_endpoint <> name)
  end

  def gender(id_name) when is_number(id_name) or is_atom(id_name) do
    Pokedex.get(@gender_endpoint <> to_string(id_name))
  end
  def gender(name) when is_bitstring(name) do
    Pokedex.get(@gender_endpoint <> name)
  end

  def growth_rate(id) when is_number(id) do
    Pokedex.get(@growth_rate_endpoint <> to_string(id))
  end
  def growth_rate(name) when is_atom(name) do
    name = Pokedex.atom_to_pokedex_string(name)
    Pokedex.get(@growth_rate_endpoint <> name)
  end
  def growth_rate(name) when is_bitstring(name) do
    Pokedex.get(@growth_rate_endpoint <> name)
  end

  def nature(id_name) when is_number(id_name) or is_atom(id_name) do
    Pokedex.get(@nature_endpoint <> to_string(id_name))
  end
  def nature(name) when is_bitstring(name) do
    Pokedex.get(@nature_endpoint <> name)
  end

  def pokeathlon_stat(id_name) when is_number(id_name) or is_atom(id_name) do
    Pokedex.get(@pokeathlon_stat_endpoint <>  to_string(id_name))
  end
  def pokeathlon_stat(name) when is_bitstring(name) do
    Pokedex.get(@pokeathlon_stat_endpoint <> name)
  end

  def pokemon(id_name) when is_number(id_name) or is_atom(id_name) do
    Pokedex.get(@pokemon_endpoint <> to_string(id_name))
  end
  def pokemon(name) when is_bitstring(name) do
    Pokedex.get(@pokemon_endpoint <> name)
  end

  def pokemon_color(id_name) when is_number(id_name) or is_atom(id_name) do
    Pokedex.get(@pokemon_color_endpoint <> to_string(id_name))
  end
  def pokemon_color(name) when is_bitstring(name) do
    Pokedex.get(@pokemon_color_endpoint <> name)
  end

  def pokemon_form(id_name) when is_number(id_name) or is_atom(id_name) do
    Pokedex.get(@pokemon_form_endpoint <> to_string(id_name))
  end
  def pokemon_form(name) when is_bitstring(name) do
    Pokedex.get(@pokemon_form_endpoint <> name)
  end

  def pokemon_habitat(id) when is_number(id) do
    Pokedex.get(@pokemon_habitat_endpoint <> to_string(id))
  end
  def pokemon_habitat(name) when is_atom(name) do
    name = Pokedex.atom_to_pokedex_string(name)
    Pokedex.get(@pokemon_habitat_endpoint <> name)
  end
  def pokemon_habitat(name) when is_bitstring(name) do
    Pokedex.get(@pokemon_habitat_endpoint <> name)
  end

  def pokemon_shape(id) when is_number(id) do
    Pokedex.get(@pokemon_shape_endpoint <> to_string(id))
  end
  def pokemon_shape(name) when is_atom(name) do
    name = Pokedex.atom_to_pokedex_string(name)
    Pokedex.get(@pokemon_shape_endpoint <> name)
  end
  def pokemon_shape(name) when is_bitstring(name) do
    Pokedex.get(@pokemon_shape_endpoint <> name)
  end

  def pokemon_species(id_name) when is_number(id_name) or is_atom(id_name) do
    Pokedex.get(@pokemon_species_endpoint <> to_string(id_name))
  end
  def pokemon_species(name) when is_bitstring(name) do
    Pokedex.get(@pokemon_species_endpoint <> name)
  end

  def stat(id_name) when is_number(id_name) or is_atom(id_name) do
    Pokedex.get(@stat_endpoint <> to_string(id_name))
  end
  def stat(name) when is_bitstring(name) do
    Pokedex.get(@stat_endpoint <> name)
  end

  def type(id_name) when is_number(id_name) or is_atom(id_name) do
    Pokedex.get(@type_endpoint <> to_string(id_name))
  end
  def type(name) when is_bitstring(name) do
    Pokedex.get(@type_endpoint <> name)
  end
end
