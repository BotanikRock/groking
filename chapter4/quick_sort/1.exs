defmodule Grok do
  def quick_sort(list) when length(list) < 2, do: list
  def quick_sort(list) do
    list_length = length(list)

    pivot_index = floor(list_length / 2)
    pivot = Enum.at(list, pivot_index)

    new_list = List.delete_at(list, pivot_index)

    {lesser, greater} = Enum.split_with(new_list, &(&1 <= pivot))

    quick_sort(lesser) ++ [pivot] ++ quick_sort(greater)
  end
end

IO.inspect Grok.quick_sort([10, 5, 2, -15, 2, 3, -10, 7])