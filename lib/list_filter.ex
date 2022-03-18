defmodule ListFilter do
  def call(list) do
    list
    |> Enum.flat_map(fn element -> parseNumber(element) end)
    |> counter_odd_number()
  end

  def parseNumber(element) do
    case Integer.parse(element) do
      {integer, _} -> [integer]
      :error -> []
    end
  end

  defp counter_odd_number(element) do
    Enum.count(element, fn element -> rem(element, 2) == 1 end)
  end
end
