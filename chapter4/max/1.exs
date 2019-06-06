defmodule Grok do
  # TODO: Не нравится мне как это тут устроено всё... 
  def max([]), do: nil
  def max([head | tail]) when length(tail) == 2 do
    tail_el = Enum.at(tail, 0)

    if head < tail_el, do: tail_el, else: head 
  end 
  def max([head | tail]) do
    max_num = max(tail)

    if head < max_num, do: max_num, else: head 
  end
end

IO.puts Grok.max([100, 1203, 0, -10, 20, 8, 145])