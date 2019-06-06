def sum(list)
  head, *tail = list

  return 0 if head.nil?

  return head if list.empty?

  head + sum(tail)
end

p sum([2, 4, 6])
