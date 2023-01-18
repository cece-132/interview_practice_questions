require 'pry'

array_matrx = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
];

# def snail(array_matrix)
#   # across the entire first array
#   # all of the last nums from each array
#   # reverse of the last array
#   # first of the last two arrays
#   # the middle number in the middle array
# end

# ----

# def snail(array_matrix)
#   first = array_matrix[0]
#   binding.pry
#   last = array_matrix.last.reverse 
#   first_arr = array_matrix.map do |arr|
#     if arr != array_matrix[0] && arr != array_matrix.last
#       first << arr.last
#       last << arr[0..1]
#     end
#   end.compact
#   x = first << last
#   x.flatten
# end

# pp snail(array_matrx)

#______

# def snail(array_matrix)
#   first = array_matrix.shift
#   last = array_matrix.pop.reverse
#   binding.pry
#   first_arr = array_matrix.map do |arr|
#     unless array_matrix.empty?
#       first << arr.pop
#       last << arr[0..1]
#       binding.pry
#     end
#   end.compact
#   x = first << last
#   x.flatten
# end

# pp snail(array_matrx)

# -------

# def spiral_order(matrix)
#   if matrix.length <= 0
#     return []
#   end
#   first = matrix.shift
#   last = matrix.pop || []
#   middle_end = matrix.map{|arry| arry.pop}
#   middle_front = matrix.map{|arry| arry.pop}

#   first + middle_end + last.reverse + middle_front + spiral_order(matrix)
# end

# pp spiral_order([[1,2],[3,4]])
# pp spiral_order([[1,2,3],[4,5,6],[7,8,9]])
# pp spiral_order([[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]])