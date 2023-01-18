require 'pry'

# Write a method that takes two parameters, payload and target. 
# The playload should be an array or unique integer values(positive, negative, or 0). 
# The target should be an integer(positive, negative, or 0).
# Your method/function should search through the payload to find any two numbers that add together to equal the target value.

# When you find a pair of numbers that add up to your target value, 
# you can stop processing/searching and return an array of those two values. 
# If no values are found return an empty array.

# Be careful that you don’t find the same number twice in your payload; 
# for example if your payload contains a 4 and your target is 8, 
# your answer should not indicate that it found 4 twice.

# find_target([1, 3, 4, 5, 10], 15)
# => [5, 10]
# find_target([-1, -3, 4, 7, -5, 18, 10, -23, 5], 15)
# => [-3, 18]
# find_target([-3, -34, 2, 6, 40, -4], 1)
# => []

# Payload/target can be any integer(negative, 0, positive)
# iterate over the payload
# adding each num and comparing to the target
# if the sum of the pair of nums == target
# return the pair
# if the sum of the pair of nums != target
# check next pair
# if none of the pairs-sums == target
# return an empty array

# def find_target(payload, target)
#   combinations = payload.combination(2).to_a
#   combinations.each do |pair|
#     if pair.sum == target
#       return pair
#     else
#       next
#     end
#   end
# end

# pp find_target([1, 3, 4, 5, 10], 15)
# pp find_target([-1, -3, 4, 7, -5, 18, 10, -23, 5], 15)
# pp find_target([-3, -34, 2, 6, 40, -4], 1)


# ------

# def find_target(payload, target)
#   combinations = payload.combination(2).to_a
#   x = combinations.map do |pair|
#     pair.sum == target
#   end

#   if x.nil?
#     return []
#   else
#     return x
#   end

# end

# pp find_target([1, 3, 4, 5, 10], 15)
# pp find_target([-1, -3, 4, 7, -5, 18, 10, -23, 5], 15)
# pp find_target([-3, -34, 2, 6, 40, -4], 1)


# ------

# def find_target(payload, target)
#   combinations = payload.combination(2).to_a
#   x = combinations.find do |pair|
#     pair.sum == target
#   end

#   if x.nil?
#     return []
#   else
#     return x
#   end

# end

# pp find_target([1, 3, 4, 5, 10], 15)
# pp find_target([-1, -3, 4, 7, -5, 18, 10, -23, 5], 15)
# pp find_target([-3, -34, 2, 6, 40, -4], 1)


# # ------
# def find_target(payload, target)
#   combinations = payload.combination(2).to_a
#   x = combinations.find do |pair|
#     pair.sum == target
#   end
#   return x unless x.nil? 
#     return []
# end

# pp find_target([1, 3, 4, 5, 10], 15)
# pp find_target([-1, -3, 4, 7, -5, 18, 10, -23, 5], 15)
# pp find_target([-3, -34, 2, 6, 40, -4], 1)


# ------

# def combinations(payload)
#   all = all_combinations(payload)
#   all.find_all do |combo|
#     combo.length == 2
#   end.compact
# end

# def all_combinations(arr)
#   l = arr.pop
#   if l.nil?
#     [[]]
#   else
#     all_combinations(arr).map{|s| 
#       [s,s+[l]]
#     }.flatten(1)
#   end
# end

# def find_target(payload, target)
#   combinations = combinations(payload)
  
#   x = combinations.find do |pair|
#     pair.sum == target
#   end
#   return x unless x.nil? 
#     return []
# end

# pp find_target([1, 3, 4, 5, 10], 15)
# pp find_target([-1, -3, 4, 7, -5, 18, 10, -23, 5], 15)
# pp find_target([-3, -34, 2, 6, 40, -4], 1)