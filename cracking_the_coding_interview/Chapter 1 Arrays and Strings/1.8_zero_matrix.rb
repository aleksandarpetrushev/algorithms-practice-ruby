# Write an algorithm such that if an element in an MxN matrix is 0, its entire row and column are set to 0.

def set_to_zero(matrix)
  n = matrix.length
  m = matrix[0].length
  matrix.each_with_index do |row, i|
    row.each_with_index do |element, j|
      if element.zero?
        n.times { |idx| matrix[i][idx] = 2_000_000 }
        m.times { |idx| matrix[idx][j] = 2_000_000 }
      end
    end
  end
  n.times do |i|
    m.times do |j|
      matrix[i][j] = 0 if matrix[i][j] == 2_000_000
    end
  end
end

def set_to_zero_optimal(matrix)
  n = matrix.length
  m = matrix[0].length
  rows_to_fill, columns_to_fill = [], []
  n.times do |i|
    m.times do |j|
      if matrix[i][j].zero?
        rows_to_fill << i
        columns_to_fill << j
      end
    end
  end

  m.times do |i|
    rows_to_fill.each do |row_number|
      matrix[row_number][i] = 0
    end
  end

  n.times do |i|
    columns_to_fill.each do |column_number|
      matrix[i][column_number] = 0
    end
  end
end

matrix = [[1, 2, 3, 4],
          [5, 6, 0, 8],
          [9, 10, 11, 12],
          [13, 0, 14, 15]]

set_to_zero_optimal(matrix)
matrix.each { |row| pp row }