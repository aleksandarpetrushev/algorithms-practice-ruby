def merge_sort(array, left, right)
  return array[left..right] if left >= right

  mid = left + (right - left) / 2
  left_sorted_subarray = merge_sort(array, left, mid)
  right_sorted_subarray = merge_sort(array, mid + 1, right)

  merged_sorted_array = []
  left_idx, right_idx = 0, 0
  while left_idx < left_sorted_subarray.length && right_idx < right_sorted_subarray.length
    if left_sorted_subarray[left_idx] < right_sorted_subarray[right_idx]
      merged_sorted_array << left_sorted_subarray[left_idx]
      left_idx += 1
    elsif left_sorted_subarray[left_idx] > right_sorted_subarray[right_idx]
      merged_sorted_array << right_sorted_subarray[right_idx]
      right_idx += 1
    end
  end

  if left_idx == left_sorted_subarray.length
    while right_idx < right_sorted_subarray.length
      merged_sorted_array << right_sorted_subarray[right_idx]
      right_idx += 1
    end
  elsif right_idx == right_sorted_subarray.length
    while left_idx < left_sorted_subarray.length
      merged_sorted_array << left_sorted_subarray[left_idx]
      left_idx += 1
    end
  end

  merged_sorted_array
end

array = [5, 7, -12, -77, 77, 55, 9]
puts merge_sort(array, 0, array.length)