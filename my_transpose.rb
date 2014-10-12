def my_transpose(matrix)
  result_matrix = []
  
  matrix.length.times do |y|
    col = []
    matrix[y].length.times do |x|
      col << matrix[x][y]
    end
    result_matrix << col
  end
  
  result_matrix
end

matrix = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]
  
p my_transpose(matrix)