# Given an image represented by an NxN matrix, where each pixel in the image is 4 bytes, write a method to rotate the image by 90 degrees. Can you do this in place?

def rotate_square(matrix, layer)
  n = matrix.length
  last_row = []
  first_row = []
  n.times { |i| last_row << matrix[i][layer] }
  n.times { |i| first_row << matrix[layer][i] }
  (n - 1).times { |i| matrix[layer + i][layer] = matrix[n - 1 - layer][layer + i] }
  matrix[n - 1 - layer][layer] = matrix[n - 1 - layer][n - 1 - layer]
  (n - 1).times { |i| matrix[n - 1 - layer][i] = matrix[n - 1 - i - layer][n - 1 - layer] }
  matrix[n - 1 - layer][n - 1 - layer] = matrix[layer][n - 1 - layer]
  n.times { |i| matrix[i][n - 1 - layer] = last_row[i] }
  (n - 1).times { |i| matrix[layer][i] = matrix[n - 1 - i][n - 1 - layer] }
  n.times { |i| matrix[i][n - 1 - layer] = first_row[i] }
end

matrix = [[1, 2, 3, 4],
          [5, 6, 7, 8],
          [9, 10, 11, 12],
          [13, 14, 15, 16]]

rotate_square(matrix, 0)
# rotate_square(matrix, 1)

matrix.each { |row| pp row }