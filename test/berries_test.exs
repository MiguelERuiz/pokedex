defmodule BerriesTest do
    use ExUnit.Case
    setup do
        Tesla.Mock.mock fn
            %{method: :get} ->
            %Tesla.Env{status: 200, body: %{"item" => %{"name" => "cheri-berry"}}}
        end
        :ok
    end

    test "get berry info by id" do
        assert {:ok, env} = Pokedex.Berries.berry(1)
        assert env.status == 200
        assert env.body["item"]["name"] == "cheri-berry"
    end

    test "get berry info by atom name" do
        assert {:ok, env} = Pokedex.Berries.berry(:cheri)
        assert env.status == 200
        assert env.body["item"]["name"] == "cheri-berry"
    end

    test "get berry info by string name" do
        assert {:ok, env} = Pokedex.Berries.berry("cheri")
        assert env.status == 200
        assert env.body["item"]["name"] == "cheri-berry"
    end

    test "get berry firmness by id" do
        assert {:ok, env} = Pokedex.Berries.berry_firmness(1)
        assert env.status == 200
        assert env.body["name"] == "very-soft"
    end

    test "get berry firmness by atom name" do
        assert {:ok, env} = Pokedex.Berries.berry_firmness(:very_soft)
        assert env.status == 200
        assert env.body["name"] == "very-soft"
    end

    test "get berry firmness by string name" do
        assert {:ok, env} = Pokedex.Berries.berry_firmness("very-soft")
        assert env.status == 200
        assert env.body["name"] == "very-soft"
    end

    test "get berry flavor by id" do
        assert {:ok, env} = Pokedex.Berries.berry_flavor(1)
        assert env.status == 200
        assert env.body["name"] == "spicy"
    end

    test "get berry flavor by atom name" do
        assert {:ok, env} = Pokedex.Berries.berry_flavor(:spicy)
        assert env.status == 200
        assert env.body["name"] == "spicy"
    end

    test "get berry flavor by string name" do
        assert {:ok, env} = Pokedex.Berries.berry_flavor("spicy")
        assert env.status == 200
        assert env.body["name"] == "spicy"
    end
end