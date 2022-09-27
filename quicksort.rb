def quicksort(array)
  return array if array.length < 2

  pivot = array[rand(0..array.length)]
  left_subarray = array.select { |el| el < pivot }
  right_subarray = array.select { |el| el > pivot }
  quicksort(left_subarray) + [pivot] + quicksort(right_subarray)
end

array = [1, 5, 10, -2, 4, -77, 78]
puts quicksort(array)
