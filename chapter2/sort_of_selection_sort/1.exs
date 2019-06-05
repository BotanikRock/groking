defmodule Grok do
  def selection_sort(list), do: selection_sort(list, [])

  defp selection_sort([], sorted), do: sorted
  defp selection_sort(list, sorted) do
    min = Enum.min(list)

    selection_sort(List.delete(list, min), sorted ++ [min])
  end
end

# TODO: min своими руками

IO.inspect Grok.selection_sort([5, 3, 6, 2, 10])
