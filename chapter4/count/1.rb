def count(list)
  head, *tail = list

  head.nil? ? 0 : 1 + count(tail)
end

p count([0, 0, 0, 0, 0, 'fsdfasf'])
