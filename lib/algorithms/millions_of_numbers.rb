# #Ruby
# nums_1 = [1, 2, 4, 5, 8]
# nums_2 = [2, 3, 5, 7, 9]
# nums_3 = [1, 2, 5, 8, 9]
# find_matches(nums_1, nums_2, nums_3)
# => [2, 5]

# You are given three arrays of equal size. Each array has 1 million RANDOM integer values.
# Assume that each array is already sorted in ascending order and that no individual array has any duplicate values.
# Your goal is to write a method/function that will return an array of any/all values which are present in all three arrays.
require 'pry'

nums_1 = [1, 2, 4, 5, 8]
nums_2 = [2, 3, 5, 7, 9]
nums_3 = [1, 2, 5, 8, 9]

# def common_nums(nums1, nums2, nums3)
#   nums = []
#   nums1.each do |num|
#     if nums2.include?(num) && nums3.include?(num)
#       nums << num
#     end
#   end   
  
#   nums2.each do |num|
#     if nums3.include?(num) && nums1.include?(num)
#       nums << num
#     end
#   end 

#   nums3.each do |num|
#     if nums1.include?(num) && nums2.include?(num)
#       nums << num
#     end
#   end 
#   nums.uniq
# end

# ------------------

# def common_nums(nums1, nums2, nums3)
#   nums_and_values = num_hash(nums1 + nums2 + nums3)

#   nums_and_values.map do |num, value|
#     num if value == 3
#   end.compact
# end

# def num_hash(array)
#   num_hash = {}
#   array.each do |num|
#     if num_hash.has_key?(num)
#       num_hash[num] += 1
#     else
#       num_hash[num] = 1
#     end
#   end 
#   num_hash
# end  

# p common_nums(nums_1, nums_2, nums_3)

# ------------------

# only neccessary if arrays are not equal length
# def common_nums(ar1, ar2, ar3)
#   i, j, k = 0, 0, 0
#   array = []
#   while i < ar1.length && j < ar2.length && k < ar3.length
#     if (ar1[i] == ar2[j] and ar2[j] == ar3[k])
#       array << ar1[i]
#       i += 1
#       j += 1
#       k += 1
#     elsif ar1[i] < ar2[j]
#       i += 1
#     elsif ar2[j] < ar3[k]
#       j += 1
#     else
#       k += 1
#     end
#   end
#   array
# end

# p common_nums(nums_1, nums_2, nums_3)

# ------

# def common_nums(nums1, nums2, nums3)
#   num_hash(nums1 + nums2 + nums3)
# end

# def num_hash(array)
#   array_num = []
#   num_hash = {}
#   array.each do |num|
#     if num_hash.has_key?(num)
#       num_hash[num] += 1
#       array_num << num if num_hash[num] == 3
#     else
#       num_hash[num] = 1
#     end
#   end 
#   array_num
# end  

# p common_nums(nums_1, nums_2, nums_3)
