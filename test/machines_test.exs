defmodule MachinesTest do
  @moduledoc false

  use ExUnit.Case, async: true

  test "get machine by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"move" => move}}} = Pokedex.Machines.machine(1)
    assert status == 200
    assert move["name"] == "mega-punch"
  end

  test "get machine by string id" do
    assert {:ok, %Tesla.Env{status: status, body: %{"move" => move}}} = Pokedex.Machines.machine("1")
    assert status == 200
    assert move["name"] == "mega-punch"
  end

  test "get not found response for a not found numeric id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Machines.machine(-1)
    assert status == 404
  end

  test "get not found response for a not found string id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Machines.machine("-1")
    assert status == 404
  end
end
