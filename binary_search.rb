def binary_search(array, target)
    left, right = 0, array.size
    while left <= right
        mid = (left + right) / 2
        if array[mid] < target
            left = mid + 1
        elsif array[mid] > target
            right = mid - 1
        else
            return mid
        end
    end

    return -1
end

array = [1,2,3,4,7,8,9,10]

puts binary_search(array, 7)
puts binary_search(array, 8)
puts binary_search(array, 9)