# pokedex
An Elixir Wrapper Library for https://pokeapi.co/

pokedex is a wrapper library for the [PokéAPI](https://pokeapi.co/) written in Elixir. It includes requests for all
resources in the [PokéAPI-v2](https://pokeapi.co/api/v2/) with `Cache-Control` in the HTTP headers requests.

In order to manage HTTP requests, it uses Tesla as HTTP client.

## Index of contents

* [Requirements](#requeriments)
* [Usage](#usage)

## Requirements
* Elixir >= 1.5
* Tesla 1.2.1 (https://github.com/teamon/tesla)
* Jason 1.0.0

## Usage

Every functions works if the input parameter is a `number()` or a number
as a `string()`. For those functions that have an endpoint like `{id or name}` the input parameter may be also an `atom()` or a `string()`.

*NOTE*: Those functions that don't apply the previous cases will be indicated.

### Berries

For all resources related to [berries](https://pokeapi.co/docs/v2.html/#berries-section), the parameter may be `atom()`, `number()` or `string()`.

<details>
  <summary> Berry </summary>

  ```elixir
    iex(1)> {:ok, berry} = Pokedex.Berries.berry(1) # or "1"
    iex(2)> {:ok, berry} = Pokedex.Berries.berry(:cheri)
    iex(3)> {:ok, berry} = Pokedex.Berries.berry("cheri")
  ```
</details>

<details>
  <summary> Berry Firmness </summary>

  ```elixir
    iex(1)> {:ok, berry_firmness} = Pokedex.Berries.berry_firmness(1) # or "1"
    iex(2)> {:ok, berry_firmness} = Pokedex.Berries.berry_firmness(:very_soft)
    iex(3)> {:ok, berry_firmness} = Pokedex.Berries.berry_firmness("very-soft")
  ```
</details>

<details>
  <summary> Berry Flavor </summary>

  ```elixir
    iex(1)> {:ok, berry_flavor} = Pokedex.Berries.berry_flavor(1) # or "1"
    iex(2)> {:ok, berry_flavor} = Pokedex.Berries.berry_flavor(:spicy)
    iex(3)> {:ok, berry_flavor} = Pokedex.Berries.berry_flavor("spicy")
  ```
</details>

### Contests

For all resources related to [contests](https://pokeapi.co/docs/v2.html/#contests-section), the parameter may be `number()` or `string()`, but only the contest types may be `atom()` too.

<details>
  <summary> Contest Type </summary>

  ```elixir
    iex(1)> {:ok, contest_type} = Pokedex.Contests.contest_type(1) # or "1"
    iex(2)> {:ok, contest_type} = Pokedex.Contests.contest_type(:cool)
    iex(3)> {:ok, contest_type} = Pokedex.Contests.contest_type("cool")
  ```
</details>

<details>
  <summary> Contest Effect </summary>

  ```elixir
    iex(1)> {:ok, contest_effect} = Pokedex.Contests.contest_effect(1)
    iex(2)> {:ok, contest_effect} = Pokedex.Contests.contest_effect("1")
  ```
</details>

<details>
  <summary> Super Contest Effect </summary>

  ```elixir
    iex(1)> {:ok, super_contest_effect} = Pokedex.Contests.super_contest_effect(1)
    iex(2)> {:ok, super_contest_effect} = Pokedex.Contests.super_contest_effect("1")
  ```
</details>

### Encounters

For all resources related to [encounters](https://pokeapi.co/docs/v2.html/#encounters-section), the parameter may be `atom()`, `number()` or `string()`.

<details>
  <summary> Encounter Method </summary>

  ```elixir
    iex(1)> {:ok, encounter_method} = Pokedex.Encounters.encounter_method(3) # or "3"
    iex(2)> {:ok, encounter_method} = Pokedex.Encounters.encounter_method(:good_rod)
    iex(3)> {:ok, encounter_method} = Pokedex.Encounters.encounter_method("good-rod")
  ```
</details>

<details>
  <summary> Encounter Condition </summary>

  ```elixir
    iex(1)> {:ok, encounter_condition} = Pokedex.Encounters.encouter_condition(1) # or "1"
    iex(2)> {:ok, encounter_condition} = Pokedex.Encounters.encouter_condition(:swarm)
    iex(3)> {:ok, encounter_condition} = Pokedex.Encounters.encouter_condition("swarm")
  ```
</details>

<details>
  <summary> Encounter Condition Value </summary>

  ```elixir
    iex(1)> {:ok, enconter_condtion_value} = Pokedex.Encounters.encounter_condition_value(1) # or "1"
    iex(2)> {:ok, enconter_condtion_value} = Pokedex.Encounters.encounter_condition_value(:swarm_yes)
    iex(3)> {:ok, enconter_condtion_value} = Pokedex.Encounters.encounter_condition_value("swarm-yes")
  ```
</details>

### Evolution

For all resources related to [evolution](https://pokeapi.co/docs/v2.html/#evolution-section), the parameter may be `number()`or `string()`, but only evolution trigger may be `atom()` too.

<details>
  <summary> Evolution Chain </summary>

  ```elixir
    iex(1)> {:ok, evolution_chain} = Pokedex.Evolution.evolution_chain(1)
    iex(2)> {:ok, evolution_chain} = Pokedex.Evolution.evolution_chain("1")
  ```
</details>

<details>
  <summary> Evolution Trigger </summary>

  ```elixir
    iex(1)> {:ok, evolution_trigger} = Pokedex.Evolution.evolution_trigger(1) # or "1"
    iex(2)> {:ok, evolution_trigger} = Pokedex.Evolution.evolution_trigger(:level_up)
    iex(3)> {:ok, evolution_trigger} = Pokedex.Evolution.evolution_trigger("level-up")
  ```
</details>

### Games

For all resources related to [games](https://pokeapi.co/docs/v2.html/#games-section), the parameter may be `atom()`, `number()` or `string()`.

<details>
  <summary> Generation </summary>

  ```elixir
    iex(1)> {:ok, generation} = Pokedex.Games.generation(1) # or "1"
    iex(2)> {:ok, generation} = Pokedex.Games.generation(:generation_i)
    iex(3)> {:ok, generation} = Pokedex.Games.generation("generation-i")
  ```
</details>

<details>
  <summary> Pokedex </summary>

  ```elixir
    iex(1)> {:ok, pokedex} = Pokedex.Games.pokedex(1) # or "1"
    iex(2)> {:ok, pokedex} = Pokedex.Games.pokedex(:national)
    iex(3)> {:ok, pokedex} = Pokedex.Games.pokedex("national")
  ```
</details>

<details>
  <summary> Version </summary>

  ```elixir
    iex(1)> {:ok, version} = Pokedex.Games.version(1) # or "1"
    iex(2)> {:ok, version} = Pokedex.Games.version(:red)
    iex(3)> {:ok, version} = Pokedex.Games.version("red")
  ```
</details>

<details>
  <summary> Version Group </summary>

  ```elixir
    iex(1)> {:ok, version_group} = Pokedex.Games.version_group(1) # or "1"
    iex(2)> {:ok, version_group} = Pokedex.Games.version_group(:red_blue)
    iex(3)> {:ok, version_group} = Pokedex.Games.version_group("red-blue")
  ```
</details>

### Items

For all resources related to [items](https://pokeapi.co/docs/v2.html/#items-section), the parameter may be `atom()`, `number()` or `string()`.

<details>
  <summary> Item </summary>

  ```elixir
    iex(1)> {:ok, item} = Pokedex.Items.item(1) # or "1"
    iex(2)> {:ok, item} = Pokedex.Items.item(:master_ball)
    iex(3)> {:ok, item} = Pokedex.Items.item("master-ball")
  ```
</details>

<details>
  <summary> Item Attribute </summary>

  ```elixir
    iex(1)> {:ok,item_attribute = Pokedex.Items.item_attribute(1) # or "1"
    iex(2)> {:ok,item_attribute = Pokedex.Items.item_attribute(:countable)
    iex(3)> {:ok,item_attribute = Pokedex.Items.item_attribute("countable")
  ```
</details>

<details>
  <summary> Item Category </summary>

  ```elixir
    iex(1)> {:ok, item_category} = Pokedex.Items.item_category(1) # or "1"
    iex(2)> {:ok, item_category} = Pokedex.Items.item_category(:stat_boosts)
    iex(3)> {:ok, item_category} = Pokedex.Items.item_category("stat-boosts")
  ```
</details>

<details>
  <summary> Item Fling Effect </summary>

  ```elixir
    iex(1)> {:ok, item_fling_effect} = Pokedex.Items.item_fling_effect(1) # or "1"
    iex(2)> {:ok, item_fling_effect} = Pokedex.Items.item_fling_effect(:badly_poison)
    iex(3)> {:ok, item_fling_effect} = Pokedex.Items.item_fling_effect("badly-poison")
  ```
</details>

<details>
  <summary> Item Pocket </summary>

  ```elixir
    iex(1)> {:ok, item_pocket} = Pokedex.Items.item_pocket(1) # or "1"
    iex(2)> {:ok, item_pocket} = Pokedex.Items.item_pocket(:misc)
    iex(3)> {:ok, item_pocket} = Pokedex.Items.item_pocket("misc")
  ```
</details>

### Locations

For all resources related to [locations](https://pokeapi.co/docs/v2.html/#locations-section), the parameter may be `atom()`, `number()` or `string()`.


<details>
  <summary> Location </summary>

  ```elixir
    iex(1)> {:ok, location} = Pokedex.Locations.location(1) # or "1"
    iex(2)> {:ok, location} = Pokedex.Locations.location(:canalave_city)
    iex(3)> {:ok, location} = Pokedex.Locations.location("canalave_city")
  ```
</details>

<details>
  <summary> Location Area </summary>

  ```elixir
    iex(1)> {:ok, location_area} = Pokedex.Locations.location_area(1) # or "1"
    iex(2)> {:ok, location_area} = Pokedex.Locations.location_area(:canalave_city_area)
    iex(3)> {:ok, location_area} = Pokedex.Locations.location_area("canalave-city-area")
  ```
</details>

<details>
  <summary> Pal Park Area </summary>

  ```elixir
    iex(1)> {:ok, pal_park_area} = Pokedex.Locations.pal_park_area(1) # or "1"
    iex(2)> {:ok, pal_park_area} = Pokedex.Locations.pal_park_area(:forest)
    iex(3)> {:ok, pal_park_area} = Pokedex.Locations.pal_park_area("forest")
  ```
</details>

<details>
  <summary> Region </summary>

  ```elixir
    iex(1)> {:ok, region} = Pokedex.Locations.region(1) # or "1"
    iex(2)> {:ok, region} = Pokedex.Locations.region(:kanto)
    iex(3)> {:ok, region} = Pokedex.Locations.region("kanto")
  ```
</details>

### Machines

For the only resource related to [machines](https://pokeapi.co/docs/v2.html/#machines-section), the parameter may be `number()` or `string()`.

<details>
  <summary> Machine </summary>

  ```elixir
    iex(1)> {:ok, machine} = Pokedex.Machines.machine(1)
    iex(2)> {:ok, machine} = Pokedex.Machines.machine("1")
  ```
</details>

### Moves

All resources related to [moves](https://pokeapi.co/docs/v2.html/#moves-section), with the exception of the move categories, may be `atom()`, `number()` or `string()`. Move categories cannot be atoms.

<details>
  <summary> Move </summary>

  ```elixir
    iex(1)> {:ok, move} = Pokedex.Moves.move(1) # or "1"
    iex(2)> {:ok, move} = Pokedex.Moves.move(:pound)
    iex(3)> {:ok, move} = Pokedex.Moves.move("pound")
  ```
</details>

<details>
  <summary> Move Ailment </summary>

  ```elixir
    iex(1)> {:ok, move_ailment} = Pokedex.Moves.move_ailment(1) # or "1"
    iex(2)> {:ok, move_ailment} = Pokedex.Moves.move_ailment(:paralysis)
    iex(3)> {:ok, move_ailment} = Pokedex.Moves.move_ailment("paralysis")
  ```
</details>

<details>
  <summary> Move Battle Style </summary>

  ```elixir
    iex(1)> {:ok, move_battle_style} = Pokedex.Moves.move_battle_style(1) # or "1"
    iex(2)> {:ok, move_battle_style} = Pokedex.Moves.move_battle_style(:attack)
    iex(3)> {:ok, move_battle_style} = Pokedex.Moves.move_battle_style("attack")
  ```
</details>

<details>
  <summary> Move Category </summary>

  ```elixir
    iex(1)> {:ok,move_category = Pokedex.Moves.move_category(1) # or "1"
    iex(2)> {:ok,move_category = Pokedex.Moves.move_category("ailment")
  ```
</details>

<details>
  <summary> Move Damage Class </summary>

  ```elixir
    iex(1)> {:ok, move_damage_class} = Pokedex.Moves.move_damage_class(2) # or "2"
    iex(2)> {:ok, move_damage_class} = Pokedex.Moves.move_damage_class(:physical)
    iex(3)> {:ok, move_damage_class} = Pokedex.Moves.move_damage_class("physical")
  ```
</details>

<details>
  <summary> Move Learn Method </summary>

  ```elixir
    iex(1)> {:ok, move_learn_method} = Pokedex.Moves.move_learn_method(1) # or "1"
    iex(2)> {:ok, move_learn_method} = Pokedex.Moves.move_learn_method(:level_up)
    iex(3)> {:ok, move_learn_method} = Pokedex.Moves.move_learn_method("leve-up")
  ```
</details>

<details>
  <summary> Move Target </summary>

  ```elixir
    iex(1)> {:ok, move_target} = Pokedex.Moves.move_target(1) # or "1"
    iex(2)> {:ok, move_target} = Pokedex.Moves.move_target(:specific_move)
    iex(3)> {:ok, move_target} = Pokedex.Moves.move_target("specific-move")
  ```
</details>

### Pokemon

All resources related to [pokemon](https://pokeapi.co/docs/v2.html/#pokemon-section), with the exception of the characteristics, may be `atom()`, `number()` or `string()`. Characteristics cannot be atoms.

<details>
  <summary> Ability </summary>

  ```elixir
    iex(1)> {:ok, ability} = Pokedex.Pokemon.ability(1) # or "1"
    iex(2)> {:ok, ability} = Pokedex.Pokemon.ability(:stench)
    iex(3)> {:ok, ability} = Pokedex.Pokemon.ability("stench")
  ```
</details>

<details>
  <summary> Characteristic </summary>

  ```elixir
    iex(1)> {:ok, characteristic} = Pokedex.Pokemon.characteristic(1)
    iex(2)> {:ok, characteristic} = Pokedex.Pokemon.characteristic("1")
  ```
</details>

<details>
  <summary> Egg Group </summary>

  ```elixir
    iex(1)> {:ok, egg_group} = Pokedex.Pokemon.egg_group(1) # or "1"
    iex(2)> {:ok, egg_group} = Pokedex.Pokemon.egg_group(:monster)
    iex(3)> {:ok, egg_group} = Pokedex.Pokemon.egg_group("monster")
  ```
</details>

<details>
  <summary> Gender </summary>

  ```elixir
    iex(1)> {:ok, gender} = Pokedex.Pokemon.gender(1) # or "1"
    iex(2)> {:ok, gender} = Pokedex.Pokemon.gender(:female)
    iex(3)> {:ok, gender} = Pokedex.Pokemon.gender("female")
  ```
</details>

<details>
  <summary> Growth Rate </summary>

  ```elixir
    iex(1)> {:ok, growth_rate} = Pokedex.Pokemon.growth_rate(1) # or "1"
    iex(2)> {:ok, growth_rate} = Pokedex.Pokemon.growth_rate(:slow)
    iex(3)> {:ok, growth_rate} = Pokedex.Pokemon.growth_rate("slow")
  ```
</details>

<details>
  <summary> Nature </summary>

  ```elixir
    iex(1)> {:ok, nature} = Pokedex.Pokemon.nature(1) # or "1"
    iex(2)> {:ok, nature} = Pokedex.Pokemon.nature(:hardy)
    iex(3)> {:ok, nature} = Pokedex.Pokemon.nature("hardy")
  ```
</details>

<details>
  <summary> Pokeathlon Stat </summary>

  ```elixir
    iex(1)> {:ok, pokeathlon_stat} = Pokedex.Pokemon.pokeathlon_stat(1) # or "1"
    iex(2)> {:ok, pokeathlon_stat} = Pokedex.Pokemon.pokeathlon_stat(:speed)
    iex(3)> {:ok, pokeathlon_stat} = Pokedex.Pokemon.pokeathlon_stat("speed")
  ```
</details>

<details>
  <summary> Pokemon  </summary>

  ```elixir
    iex(1)> {:ok, pokemon} = Pokedex.Pokemon.pokemon(1) # or "1"
    iex(2)> {:ok, pokemon} = Pokedex.Pokemon.pokemon(:bulbasaur)
    iex(3)> {:ok, pokemon} = Pokedex.Pokemon.pokemon("bulbasaur")
  ```
</details>

<details>
  <summary> Pokemon Color </summary>

  ```elixir
    iex(1)> {:ok, pokemon_color} = Pokedex.Pokemon.pokemon_color(1) # or "1"
    iex(2)> {:ok, pokemon_color} = Pokedex.Pokemon.pokemon_color(:black)
    iex(3)> {:ok, pokemon_color} = Pokedex.Pokemon.pokemon_color("black")
  ```
</details>

<details>
  <summary> Pokemon Form </summary>

  ```elixir
    iex(1)> {:ok, pokemon_form} = Pokedex.Pokemon.pokemon_form(1) # or "1"
    iex(2)> {:ok, pokemon_form} = Pokedex.Pokemon.pokemon_form(:bulbasaur)
    iex(3)> {:ok, pokemon_form} = Pokedex.Pokemon.pokemon_form("bulbasaur")
  ```
</details>

<details>
  <summary> Pokemon Habitat </summary>

  ```elixir
    iex(1)> {:ok, pokemon_habitat} = Pokedex.Pokemon.pokemon_habitat(1) # or "1"
    iex(2)> {:ok, pokemon_habitat} = Pokedex.Pokemon.pokemon_habitat(:cave)
    iex(3)> {:ok, pokemon_habitat} = Pokedex.Pokemon.pokemon_habitat("cave")
  ```
</details>

<details>
  <summary> Pokemon Shape </summary>

  ```elixir
    iex(1)> {:ok, pokemon_shape} = Pokedex.Pokemon.pokemon_shape(1) # or "1"
    iex(2)> {:ok, pokemon_shape} = Pokedex.Pokemon.pokemon_shape(:ball)
    iex(3)> {:ok, pokemon_shape} = Pokedex.Pokemon.pokemon_shape("ball")
  ```
</details>

<details>
  <summary> Pokemon Species </summary>

  ```elixir
    iex(1)> {:ok, pokemon_species} = Pokedex.Pokemon.pokemon_species(1) # or "1"
    iex(2)> {:ok, pokemon_species} = Pokedex.Pokemon.pokemon_species(:bulbasaur)
    iex(3)> {:ok, pokemon_species} = Pokedex.Pokemon.pokemon_species("bulbasaur")
  ```
</details>

<details>
  <summary> Stat </summary>

  ```elixir
    iex(1)> {:ok, stat} = Pokedex.Pokemon.stat(1) # or "1"
    iex(2)> {:ok, stat} = Pokedex.Pokemon.stat(:hp)
    iex(3)> {:ok, stat} = Pokedex.Pokemon.stat("hp")
  ```
</details>

<details>
  <summary> Type </summary>

  ```elixir
    iex(1)> {:ok, type} = Pokedex.Pokemon.type(1) # or "1"
    iex(2)> {:ok, type} = Pokedex.Pokemon.type(:normal)
    iex(3)> {:ok, type} = Pokedex.Pokemon.type("normal")
  ```
</details>

### Utility

The only resource related to [utility](https://pokeapi.co/docs/v2.html/#utility-section) may be `atom()`, `number()` or `string()`. Common Models are not
supported.

<details>
  <summary> Language </summary>

  ```elixir
    iex(1)> {:ok, language} = Pokedex.Utility.language(7) # or "7"
    iex(2)> {:ok, language} = Pokedex.Utility.language(:es)
    iex(3)> {:ok, language} = Pokedex.Utility.language("es")
  ```
</details>