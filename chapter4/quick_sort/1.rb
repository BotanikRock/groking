def quick_sort(list)
  length = list.length

  return list if length < 2

  pivot_index = (length / 2).floor
  pivot = list[pivot_index]

  new_list = list[0...pivot_index] + list[(pivot_index + 1)...length]

  lesser = []
  greater = []

  new_list.each do |x|
    if x <= pivot
      lesser.push(x)
    else
      greater.push(x)
    end
  end

  quick_sort(lesser) + [pivot] + quick_sort(greater)
end

p quick_sort([10, 5, 2, -15, 2, 3, -10, 7])
