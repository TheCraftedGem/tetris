defmodule BrickTest do
  use ExUnit.Case
  doctest Tetris

  import Tetris.Brick

  test "Create Brick" do
    assert new_brick().name() == :i

  end

  def new_brick(), do: new()

end
