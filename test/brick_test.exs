defmodule BrickTest do
  use ExUnit.Case
  doctest Tetris

  import Tetris.Brick

  test "Create Brick" do
    assert new_brick().name() == :i
  end

  test "create new random brick" do
    actual = new_random()

    assert actual.name in [:i, :l, :z, :t, :o]
    assert actual.rotation in [0, 90, 180, 270]
    assert actual.reflection in [true, false]
  end

  def new_brick(), do: new()

end
