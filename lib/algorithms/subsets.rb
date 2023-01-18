# In this challenge you are given an array of unique integers. 
# Your job is to return all the possible combinations of unique pairs (2 integers only).
# No duplicate pairs are allowed. 
# Below are some examples:

# #Example 1
# Input: [1, 2, 3, 4]
# Output: [[1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4]]

# #Example 2
# Input: [54, 77]
# Output[[54, 77]]

# #Example 3
# Input: []
# Output: []

require 'pry'

# def combinations(array)
#   length = array.length
#   i = 0
#   uniq = []
#   while i < length do
#     array.map do |num|
#       num2 = array[i += 1]
#       if uniq.include?([num, num2]) || uniq.include?([num2, num])
        
#       else
#         uniq << [num, num2]
#       end
#     end
#   end 
#   uniq
# end

# p combinations([1, 2, 3, 4])
# p combinations([54, 77])
# p combinations([])

# ------

# def combinations(array)
#   uniq_combinations = []
#   x = (0..array.length).collect { |i|
#     array.combination(i).to_a
#   }.flatten(1).uniq
#   y = x.map do |a|
#     uniq_combinations << a if a.length == 2
#   end.compact.uniq.flatten(1)
# end

# p combinations([1, 2, 3, 4])
# p combinations([54, 77])
# p combinations([])

# ------

# def combinations(array)
#   if array.empty?
#     array
#   else
#     (0..array.length).collect { |i|
#       array.combination(i).to_a
#     }[2]
#   end
# end

# p combinations([1, 2, 3, 4])
# p combinations([54, 77])
# p combinations([])

# ------

# def combinations(arr)
#   (l = arr.pop) ? combinations(arr).map{|s| [s,s+[l]]}.flatten(1) : [[]]
# end


def combinations(arr)
  l = arr.pop
  if l.nil?
    [[]]
  else
    combinations(arr).map{|s| 
      [s,s+[l]]
    }.flatten(1)
  end
end

p combinations([1, 2, 3, 4])
p combinations([54, 77])
p combinations([])
# ------

# def combinations(array)
#   if array.empty?
#     array
#   else
#       array.combination(2).to_a
#   end
# end

# p combinations([1, 2, 3, 4])
# p combinations([54, 77])
# p combinations([])
