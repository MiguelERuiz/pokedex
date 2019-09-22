defmodule Pokedex.Moves do
  @moduledoc """
  Documentation for https://pokeapi.co/docs/v2.html/#moves-section
  """

  @move_endpoint "/move/"
  @move_ailment_endpoint "/move-ailment/"
  @move_battle_style_endpoint "/move-battle-style/"
  @move_category_endpoint "/move-category/"
  @move_damage_class_endpoint "/move-damage-class/"
  @move_learn_method_endpoint "/move-learn-method/"
  @move_target_endpoint "/move-target/"

  def move(id) when is_number(id) do
    Pokedex.get(@move_endpoint <> to_string(id))
  end
  def move(name) when is_atom(name) do
    name = Pokedex.atom_to_pokedex_string(name)
    Pokedex.get(@move_endpoint <> name)
  end
  def move(name) when is_bitstring(name) do
    Pokedex.get(@move_endpoint <> name)
  end

  def move_ailment(id) when is_number(id) do
    Pokedex.get(@move_ailment_endpoint <> to_string(id))
  end
  def move_ailment(name) when is_atom(name) do
    name = Pokedex.atom_to_pokedex_string(name)
    Pokedex.get(@move_ailment_endpoint <> name)
  end
  def move_ailment(name) when is_bitstring(name) do
    Pokedex.get(@move_ailment_endpoint <> name)
  end

  def move_battle_style(id_name) when is_number(id_name) or is_atom(id_name) do
    Pokedex.get(@move_battle_style_endpoint <> to_string(id_name))
  end
  def move_battle_style(name) when is_bitstring(name) do
    Pokedex.get(@move_battle_style_endpoint <> name)
  end

  def move_category(id) when is_number(id) do
    Pokedex.get(@move_category_endpoint <> to_string(id))
  end
  def move_category(name) when is_bitstring(name) do
    Pokedex.get(@move_category_endpoint <> name)
  end

  def move_damage_class(id_name) when is_number(id_name) or is_atom(id_name) do
    Pokedex.get(@move_damage_class_endpoint <> to_string(id_name))
  end
  def move_damage_class(name) do
    Pokedex.get(@move_damage_class_endpoint <> name)
  end

  def move_learn_method(id) when is_number(id) do
    Pokedex.get(@move_learn_method_endpoint <> to_string(id))
  end
  def move_learn_method(name) when is_atom(name) do
    name = Pokedex.atom_to_pokedex_string(name)
    Pokedex.get(@move_learn_method_endpoint <> name)
  end
  def move_learn_method(name) when is_bitstring(name) do
    Pokedex.get(@move_learn_method_endpoint <> name)
  end

  def move_target(id) when is_number(id) do
    Pokedex.get(@move_target_endpoint <> to_string(id))
  end
  def move_target(name) when is_atom(name) do
    name = Pokedex.atom_to_pokedex_string(name)
    Pokedex.get(@move_target_endpoint <> name)
  end
  def move_target(name) when is_bitstring(name) do
    Pokedex.get(@move_target_endpoint <> name)
  end
end
