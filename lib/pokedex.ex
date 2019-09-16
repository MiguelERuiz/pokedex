defmodule Pokedex do
  @moduledoc """
  Documentation for Pokedex: an API wrapper library for https://pokeapi.co
  """

  use Tesla
  plug Tesla.Middleware.BaseUrl, "https://pokeapi.co/api/v2"
  plug Tesla.Middleware.JSON

end
