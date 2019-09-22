defmodule PokemonTests do
  @moduledoc false

  use ExUnit.Case, async: true

  test "get ability by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.ability(1)
    assert status == 200
    assert name == "stench"
  end

  test "get ability by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.ability("1")
    assert status == 200
    assert name == "stench"
  end

  test "get ability by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.ability(:stench)
    assert status == 200
    assert name == "stench"
  end

  test "get ability by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.ability("stench")
    assert status == 200
    assert name == "stench"
  end

  test "get characteristic by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"id" => id}}} = Pokedex.Pokemon.characteristic(1)
    assert status == 200
    assert id == 1
  end

  test "get characteristic by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"id" => id}}} = Pokedex.Pokemon.characteristic("1")
    assert status == 200
    assert id == 1
  end

  test "get egg group by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.egg_group(1)
    assert status == 200
    assert name == "monster"
  end

  test "get egg group by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.egg_group("1")
    assert status == 200
    assert name == "monster"
  end

  test "get egg group by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.egg_group(:monster)
    assert status == 200
    assert name == "monster"
  end

  test "get egg group by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.egg_group("monster")
    assert status == 200
    assert name == "monster"
  end

  test "get gender by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.gender(1)
    assert status == 200
    assert name == "female"
  end

  test "get gender by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.gender("1")
    assert status == 200
    assert name == "female"
  end

  test "get gender by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.gender(:female)
    assert status == 200
    assert name == "female"
  end

  test "get gender by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.gender("female")
    assert status == 200
    assert name == "female"
  end

  test "get growth rate by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.growth_rate(1)
    assert status == 200
    assert name == "slow"
  end

  test "get growth rate by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.growth_rate("1")
    assert status == 200
    assert name == "slow"
  end

  test "get growth rate by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.growth_rate(:slow)
    assert status == 200
    assert name == "slow"
  end

  test "get growth rate by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.growth_rate("slow")
    assert status == 200
    assert name == "slow"
  end

  test "get nature by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.nature(1)
    assert status == 200
    assert name == "hardy"
  end

  test "get nature by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.nature("1")
    assert status == 200
    assert name == "hardy"
  end

  test "get nature by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.nature(:hardy)
    assert status == 200
    assert name == "hardy"
  end

  test "get nature by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.nature("hardy")
    assert status == 200
    assert name == "hardy"
  end

  test "get pokeathlon stat by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.pokeathlon_stat(1)
    assert status == 200
    assert name == "speed"
  end

  test "get pokeathlon stat by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.pokeathlon_stat("1")
    assert status == 200
    assert name == "speed"
  end

  test "get pokeathlon stat by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.pokeathlon_stat(:speed)
    assert status == 200
    assert name == "speed"
  end

  test "get pokeathlon stat by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.pokeathlon_stat("speed")
    assert status == 200
    assert name == "speed"
  end

  test "get pokemon by numeric number" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.pokemon(1)
    assert status == 200
    assert name == "bulbasaur"
  end

  test "get pokemon by string number" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.pokemon("1")
    assert status == 200
    assert name == "bulbasaur"
  end

  test "get pokemon by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.pokemon(:bulbasaur)
    assert status == 200
    assert name == "bulbasaur"
  end

  test "get pokemon by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.pokemon("bulbasaur")
    assert status == 200
    assert name == "bulbasaur"
  end

  test "get pokemon color by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.pokemon_color(1)
    assert status == 200
    assert name == "black"
  end

  test "get pokemon color by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.pokemon_color("1")
    assert status == 200
    assert name == "black"
  end

  test "get pokemon color by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.pokemon_color(:black)
    assert status == 200
    assert name == "black"
  end

  test "get pokemon color by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.pokemon_color("black")
    assert status == 200
    assert name == "black"
  end

  test "get pokemon form by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.pokemon_form(1)
    assert status == 200
    assert name == "bulbasaur"
  end

  test "get pokemon form by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.pokemon_form("1")
    assert status == 200
    assert name == "bulbasaur"
  end

  test "get pokemon form by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.pokemon_form(:bulbasaur)
    assert status == 200
    assert name == "bulbasaur"
  end

  test "get pokemon form by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.pokemon_form("bulbasaur")
    assert status == 200
    assert name == "bulbasaur"
  end

  test "get pokemon habitat by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.pokemon_habitat(1)
    assert status == 200
    assert name == "cave"
  end

  test "get pokemon habitat by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.pokemon_habitat("1")
    assert status == 200
    assert name == "cave"
  end

  test "get pokemon habitat by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.pokemon_habitat(:cave)
    assert status == 200
    assert name == "cave"
  end

  test "get pokemon habitat by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.pokemon_habitat("cave")
    assert status == 200
    assert name == "cave"
  end

  test "get pokemon shape by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.pokemon_shape(1)
    assert status == 200
    assert name == "ball"
  end

  test "get pokemon shape by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.pokemon_shape("1")
    assert status == 200
    assert name == "ball"
  end

  test "get pokemon shape by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.pokemon_shape(:ball)
    assert status == 200
    assert name == "ball"
  end

  test "get pokemon shape by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.pokemon_shape("ball")
    assert status == 200
    assert name == "ball"
  end

  test "get pokemon species by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.pokemon_species(1)
    assert status == 200
    assert name == "bulbasaur"
  end

  test "get pokemon species by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.pokemon_species("1")
    assert status == 200
    assert name == "bulbasaur"
  end

  test "get pokemon species by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.pokemon_species(:bulbasaur)
    assert status == 200
    assert name == "bulbasaur"
  end

  test "get pokemon species by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.pokemon_species("bulbasaur")
    assert status == 200
    assert name == "bulbasaur"
  end

  test "get stat by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.stat(1)
    assert status == 200
    assert name == "hp"
  end

  test "get stat by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.stat("1")
    assert status == 200
    assert name == "hp"
  end

  test "get stat by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.stat(:hp)
    assert status == 200
    assert name == "hp"
  end

  test "get stat by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.stat("hp")
    assert status == 200
    assert name == "hp"
  end

  test "get type by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.type(1)
    assert status == 200
    assert name == "normal"
  end

  test "get type by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.type("1")
    assert status == 200
    assert name == "normal"
  end

  test "get type by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.type(:normal)
    assert status == 200
    assert name == "normal"
  end

  test "get type by string name" do
    assert {:ok, %Tesla.Env{status: status, body: %{"name" => name}}} = Pokedex.Pokemon.type("normal")
    assert status == 200
    assert name == "normal"
  end

  test "get not found response for a not found numeric ability id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.ability(-1)
    assert status == 404
  end

  test "get not found response for a not found atom ability name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.ability(:not_an_ability)
    assert status == 404
  end

  test "get not found response for a not found numeric characteristic id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.characteristic(-1)
    assert status == 404
  end

  test "get not found response for a not found string characteristic name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.characteristic("not-a-characteristic")
    assert status == 404
  end

  test "get not found response for a not found numeric egg group id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.egg_group(-1)
    assert status == 404
  end

  test "get not found response for a not found atom egg group name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.egg_group(:not_an_egg_group)
    assert status == 404
  end

  test "get not found response for a not found numeric gender id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.gender(-1)
    assert status == 404
  end

  test "get not found response for a not found atom gender name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.gender(:not_a_gender)
    assert status == 404
  end

  test "get not found response for a not found numeric growth rate id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.growth_rate(-1)
    assert status == 404
  end

  test "get not found response for a not found atom growth rate name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.growth_rate(:not_a_growth_rate)
    assert status == 404
  end

  test "get not found response for a not found numeric nature id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.nature(-1)
    assert status == 404
  end

  test "get not found response for a not found atom nature name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.nature(:not_a_nature)
    assert status == 404
  end

  test "get not found response for a not found numeric pokeathlon stat id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.pokeathlon_stat(-1)
    assert status == 404
  end

  test "get not found response for a not found atom pokeathlon stat name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.pokeathlon_stat(:not_a_pokeathlon_stat)
    assert status == 404
  end

  test "get not found response for a not found numeric pokemon id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.pokemon(-1)
    assert status == 404
  end

  test "get not found response for a not found atom pokemon name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.pokemon(:not_a_pokemon)
    assert status == 404
  end

  test "get not found response for a not found numeric pokemon color id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.pokemon_color(-1)
    assert status == 404
  end

  test "get not found response for a not found atom pokemon color name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.pokemon_color(:not_a_pokemon_color)
    assert status == 404
  end

  test "get not found response for a not found numeric pokemon form id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.pokemon_form(-1)
    assert status == 404
  end

  test "get not found response for a not found atom pokemon form name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.pokemon_form(:not_a_pokemon_form)
    assert status == 404
  end

  test "get not found response for a not found numeric pokemon habitat id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.pokemon_habitat(-1)
    assert status == 404
  end

  test "get not found response for a not found atom pokemon habitat name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.pokemon_habitat(:not_a_pokemon_habitat)
    assert status == 404
  end

  test "get not found response for a not found numeric pokemon shape id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.pokemon_shape(-1)
    assert status == 404
  end

  test "get not found response for a not found atom pokemon shape name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.pokemon_shape(:not_a_pokemon_shape)
    assert status == 404
  end

  test "get not found response for a not found numeric pokemon species id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.pokemon_species(-1)
    assert status == 404
  end

  test "get not found response for a not found atom pokemon species name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.pokemon_species(:not_a_pokemon_species)
    assert status == 404
  end

  test "get not found response for a not found numeric stat id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.stat(-1)
    assert status == 404
  end

  test "get not found response for a not found atom stat name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.stat(:not_a_stat)
    assert status == 404
  end

  test "get not found response for a not found numeric type id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.type(-1)
    assert status == 404
  end

  test "get not found response for a not found atom type name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Pokemon.stat(:not_a_type)
    assert status == 404
  end
end
