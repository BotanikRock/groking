defmodule Grok do
  def sum([]), do: 0
  def sum([head | []]), do: head
  def sum([head | tail]) do
    head + sum(tail)
  end
end

IO.puts Grok.sum([2, 4, 6])