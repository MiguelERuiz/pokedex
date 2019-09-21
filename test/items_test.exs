defmodule ItemsTest do
  @moduledoc false

  use ExUnit.Case, async: true
  doctest Pokedex.Items

  test "get item by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: body}} = Pokedex.Items.item(1)
    assert status == 200
    assert body["name"] == "master-ball"
  end

  test "get item by string id" do
    assert {:ok, %Tesla.Env{status: status, body: body}} = Pokedex.Items.item("1")
    assert status == 200
    assert body["name"] == "master-ball"
  end

  test "get item by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: body}} = Pokedex.Items.item(:master_ball)
    assert status == 200
    assert body["name"] == "master-ball"
  end

  test "get item by string name" do
    assert {:ok, %Tesla.Env{status: status, body: body}} = Pokedex.Items.item("master-ball")
    assert status == 200
    assert body["name"] == "master-ball"
  end

  test "get item attribute by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: body}} = Pokedex.Items.item_attribute(1)
    assert status == 200
    assert body["name"] == "countable"
  end

  test "get item attribute by string id" do
    assert {:ok, %Tesla.Env{status: status, body: body}} = Pokedex.Items.item_attribute("1")
    assert status == 200
    assert body["name"] == "countable"
  end

  test "get item attribute by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: body}} = Pokedex.Items.item_attribute(:countable)
    assert status == 200
    assert body["name"] == "countable"
  end

  test "get item attribute by string name" do
    assert {:ok, %Tesla.Env{status: status, body: body}} = Pokedex.Items.item_attribute("countable")
    assert status == 200
    assert body["name"] == "countable"
  end

  test "get item category by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: body}} = Pokedex.Items.item_category(1)
    assert status == 200
    assert body["name"] == "stat-boosts"
  end

  test "get item category by string id" do
    assert {:ok, %Tesla.Env{status: status, body: body}} = Pokedex.Items.item_category("1")
    assert status == 200
    assert body["name"] == "stat-boosts"
  end

  test "get item category by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: body}} = Pokedex.Items.item_category(:stat_boosts)
    assert status == 200
    assert body["name"] == "stat-boosts"
  end

  test "get item category by string name" do
    assert {:ok, %Tesla.Env{status: status, body: body}} = Pokedex.Items.item_category("stat-boosts")
    assert status == 200
    assert body["name"] == "stat-boosts"
  end

  test "get item fling effect by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: body}} = Pokedex.Items.item_fling_effect(1)
    assert status == 200
    assert body["name"] == "badly-poison"
  end

  test "get item fling effect by string id" do
    assert {:ok, %Tesla.Env{status: status, body: body}} = Pokedex.Items.item_fling_effect("1")
    assert status == 200
    assert body["name"] == "badly-poison"
  end

  test "get item fling effect by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: body}} = Pokedex.Items.item_fling_effect(:badly_poison)
    assert status == 200
    assert body["name"] == "badly-poison"
  end

  test "get item fling effect by string name" do
    assert {:ok, %Tesla.Env{status: status, body: body}} = Pokedex.Items.item_fling_effect("badly-poison")
    assert status == 200
    assert body["name"] == "badly-poison"
  end

  test "get item pocket by numeric id" do
    assert {:ok, %Tesla.Env{status: status, body: body}} = Pokedex.Items.item_pocket(1)
    assert status == 200
    assert body["name"] == "misc"
  end

  test "get item pocket by string id" do
    assert {:ok, %Tesla.Env{status: status, body: body}} = Pokedex.Items.item_pocket("1")
    assert status == 200
    assert body["name"] == "misc"
  end

  test "get item pocket by atom name" do
    assert {:ok, %Tesla.Env{status: status, body: body}} = Pokedex.Items.item_pocket(:misc)
    assert status == 200
    assert body["name"] == "misc"
  end

  test "get item pocket by string name" do
    assert {:ok, %Tesla.Env{status: status, body: body}} = Pokedex.Items.item_pocket("misc")
    assert status == 200
    assert body["name"] == "misc"
  end

  test "get a not found response for a not found numeric item id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Items.item(-1)
    assert status == 404
  end

  test "get a not found response for a not found string item id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Items.item("-1")
    assert status == 404
  end

  test "get a not found response for a not found atom item name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Items.item(:not_an_item)
    assert status == 404
  end

  test "get a not found response for a not found string item name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Items.item("not-an-item")
    assert status == 404
  end

  test "get a not found response for a not found numeric item attribute id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Items.item_attribute(-1)
    assert status == 404
  end

  test "get a not found response for a not found string item attribute id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Items.item_attribute("-1")
    assert status == 404
  end

  test "get a not found response for a not found atom item attribute name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Items.item_attribute(:not_an_item_attribute)
    assert status == 404
  end

  test "get a not found response for a not found string item attribute name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Items.item_attribute("not-an-item-attribute")
    assert status == 404
  end

  test "get a not found response for a not found numeric item category id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Items.item_category(-1)
    assert status == 404
  end

  test "get a not found response for a not found string item category id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Items.item_category("-1")
    assert status == 404
  end

  test "get a not found response for a not found atom item category name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Items.item_category(:not_an_item_category)
    assert status == 404
  end

  test "get a not found response for a not found string item category name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Items.item_category("not-an-item-category")
    assert status == 404
  end

  test "get a not found response for a not found numeric item fling effect id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Items.item_fling_effect(-1)
    assert status == 404
  end

  test "get a not found response for a not found string item fling effect id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Items.item_fling_effect("-1")
    assert status == 404
  end

  test "get a not found response for a not found atom item fling effect name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Items.item_fling_effect(:not_an_item_fling_effect)
    assert status == 404
  end

  test "get a not found response for a not found string item fling effect name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Items.item_fling_effect("not-an-item-fling-effect")
    assert status == 404
  end

  test "get a not found response for a not found numeric item pocket id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Items.item_pocket(-1)
    assert status == 404
  end

  test "get a not found response for a not found string item pocket id" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Items.item_pocket("-1")
    assert status == 404
  end

  test "get a not found response for a not found atom item pocket name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Items.item_pocket(:not_an_item_pocket)
    assert status == 404
  end

  test "get a not found response for a not found string item pocket name" do
    assert {:ok, %Tesla.Env{status: status}} = Pokedex.Items.item_pocket("not-an-item-pocket")
    assert status == 404
  end
end
