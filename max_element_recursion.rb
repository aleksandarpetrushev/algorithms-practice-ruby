def max_element_recursion(array)
  return -2_000_000 if array.empty?

  [array[0], max_element_recursion(array[1..])].max
end

array = [1, 5, 10, 2, 55, 11]
puts max_element_recursion(array)
