def factorial(x)
  if x <= 1
    x
  else
    x * factorial(x - 1)
  end
end

p factorial(6)
