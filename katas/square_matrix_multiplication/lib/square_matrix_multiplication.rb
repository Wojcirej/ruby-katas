require 'matrix'
def square_matrix_multiplication(matrix_a, matrix_b)
  matrix_a = Matrix.send(:new, matrix_a)
  matrix_b = Matrix.send(:new, matrix_b)
  (matrix_a * matrix_b).to_a
end
