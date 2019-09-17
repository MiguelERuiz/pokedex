defmodule Pokedex.Berries do
    def berry(id) when is_number(id) or is_atom(id) do
        Pokedex.get("/berry/" <> to_string(id))
    end
    def berry(name) when is_bitstring(name) do
        Pokedex.get("/berry/" <> name)
    end
end