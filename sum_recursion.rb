def recursive_sum(array)
  return 0 if array.empty?

  array[0] + recursive_sum(array[1..])
end

puts recursive_sum([1, 2, 5, 10])
