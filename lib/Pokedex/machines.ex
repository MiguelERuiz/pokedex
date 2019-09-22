defmodule Pokedex.Machines do
  @moduledoc """
  Documentation for https://pokeapi.co/docs/v2.html/#machines-section
  """

  @machine_endpoint "/machine/"

  def machine(id) when is_number(id) do
    Pokedex.get(@machine_endpoint <> to_string(id))
  end
  def machine(id) when is_bitstring(id) do
    Pokedex.get(@machine_endpoint <> id)
  end
end
