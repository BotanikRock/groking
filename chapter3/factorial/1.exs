defmodule Grok do
  def factorial(n) when n <= 1, do: n
  def factorial(n) do
    n * factorial(n - 1)
  end
end

IO.puts Grok.factorial(6)