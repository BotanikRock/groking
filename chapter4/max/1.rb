def max(list)
  length = list.length

  return list[0] if length < 2

  if length == 2
    return list[0] < list[1] ? list[1] : list[0]
  end

  max_num = max(list[1...length])

  list[0] < max_num ? max_num : list[0]
end

p max([100, 1203, 0, -10, 20, 8, 145])
