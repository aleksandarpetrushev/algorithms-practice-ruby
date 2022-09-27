def selection_sort(array)
  n = array.length
  n.times do |i|
    max = array[i..-1].max
    max_position = array.index(max)
    array[i], array[max_position] = max, array[i]
  end
end

array = [1, 4, -5, 24, -9, 2]
selection_sort(array)
puts array
