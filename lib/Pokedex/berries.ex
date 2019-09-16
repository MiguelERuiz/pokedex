defmodule Pokedex.Berries do
    def berry(id) when is_number(id) do
        Pokedex.Url.get("/berry/" <> to_string(id))
    end
    def berry(name) when is_bitstring(name) do
        Pokedex.Url.get("/berry/" <> name)
    end
    def berry(name) when is_atom(name) do
        Pokedex.Url.get("/berry/" <> to_string(name))
    end
end