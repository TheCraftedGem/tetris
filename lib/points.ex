defmodule Tetris.Points do

  def translate(points, {x, y}) do
    points
    |> Enum.map(fn {dx, dy} -> {dx + x, dy + y} end)
  end

  defp transpose_points({x, y}), do: {y, x}
end
