defmodule Pokedex do
  @moduledoc """
  Documentation for Pokedex: an API wrapper library for https://pokeapi.co
  """

  use Tesla
  plug Tesla.Middleware.BaseUrl, "https://pokeapi.co/api/v2"
  plug Tesla.Middleware.Headers, [{"cache-control", "private"}]
  plug Tesla.Middleware.Timeout, timeout: 2_000
  plug Tesla.Middleware.JSON

  # Types definition
  @type t :: atom() | binary()

  @spec atom_to_pokedex_string(atom()) :: binary()
  def atom_to_pokedex_string(atom) do
    (atom |> Atom.to_string) |> String.replace("_", "-")
  end

  @spec get_request(String.t(), list(any())) :: {:ok, struct()} | {:error, atom()}
  def get_request(url, options \\ []) do
    url
    |>
    get(options)
    |> parse_result
  end

  @spec parse_result({:ok, %Tesla.Env{}} | {:error, :timeout}) :: {:ok, struct()} | {:error, atom()}
  def parse_result({:ok, %Tesla.Env{status: 200, body: body}}) do
    {:ok, body}
  end

  def parse_result({:ok, %Tesla.Env{status: 404}}) do
    {:error, :not_found}
  end

  def parse_result({:error, :timeout}) do
    {:error, :timeout}
  end
end
