defmodule Pokedex.Berries do
    def berry(id) when is_number(id) or is_atom(id) do
        Pokedex.get("/berry/" <> to_string(id))
    end
    def berry(name) when is_bitstring(name) do
        Pokedex.get("/berry/" <> name)
    end

    def berry_firmness(id) when is_number(id) do
        Pokedex.get("/berry-firmness/" <> to_string(id))
    end
    def berry_firmness(name) when is_atom(name) do
        name = (name |> Atom.to_string) |> String.replace("_", "-")
        Pokedex.get("/berry-firmness/" <> name)
    end
    def berry_firmness(name) when is_bitstring(name) do
        Pokedex.get("/berry-firmness/" <> name)
    end
end