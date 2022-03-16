defmodule ListFilter do
  def build(list) do
    list
    |> Enum.map(&to_convert/1)
    |> filter()
    |> counter_number()
  end

  def to_convert(list) do
    String.to_integer(list)
  end

  def filter(list) do
    Enum.filter(list, fn x -> is_number(x) end)
  end

  defp counter_number(list) do
    Enum.count(list, fn x -> rem(x, 2) != 0 end)
  end
end
