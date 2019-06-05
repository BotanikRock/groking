def find_smallest(arr)
  smallest_index = 0
  smallest = arr[smallest_index]

  arr_length = arr.length

  (1...arr_length).each do |index|
    if arr[index] < smallest
      smallest_index = index
      smallest = arr[smallest_index]
    end
  end

  smallest_index
end

def selection_sort(arr)
  sorted_arr = []

  arr_length = arr.length

  (0...arr_length).each do |_|
    smallest_index = find_smallest(arr)

    sorted_arr.push(arr.delete_at(smallest_index))
  end

  sorted_arr
end

p selection_sort([5, 3, 6, 2, 10])
