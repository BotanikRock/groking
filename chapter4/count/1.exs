defmodule Grok do
  def count([]), do: 0
  def count([_ | []]), do: 1
  def count([_ | tail]) do
    1 + count(tail)
  end
end

IO.puts Grok.count([0, 0, 0, 0, 0, 'fsdfasf'])