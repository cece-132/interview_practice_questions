require 'pry'

# the solution works but isn't as efficient as it could be

def remove_duplicates(nums)
  return 0 if nums.empty?
  # accounts for empty arrays
    
  k = 1
  # k starts at 1 because that should be the lowest amount of uniq values
  # keeps track of the amount of unique values
    
  (1...nums.length).each do |i|
  # starts at 1 because then we can compare the two positions and through the entire length of the array
      
    if nums[i] != nums[i - 1]
     # if nums[at position i] is not equal to nums[at position i minus 1]
     # meaning if the num we are looking at is not equal to the previous   
        
      nums[k] = nums[i]
      # then we want nums[at position k] to equal nums[at position i]
        
      k += 1
      # increase the unique number count   
    end
  end
  
  k
  # returns the unique number count value
end


# this is a more efficient version of the method

# def remove_duplicates(nums)
#   return 0 if nums.empty?
#   # accounts for empty arrays
    
#   k = 1
#   # variable for unique number count
    
#   i = 1
#   # variable checking that we are running code for the length of the array

#   while i < nums.length
#   # while i is less than the length of the nums array
      
#     if nums[i] != nums[k - 1]
#     # if the num[at index i] is not equal to nums[at index k -1]
#     # if the num we are looking at is not equal to the previous 
        
#       nums[k] = nums[i]
#       # nums[at index k] equals nums[at index i] this reassigns the value
        
#       k += 1
#       # increase the value of the unique number count
        
#     end
#     i += 1
#     # increase the value of the variable making sure we check every number in the array
#   end
  
#   k
#   # returns the unique number count value
# end

# THIRD SOLUTION

# def remove_duplicates(nums)
#   return 0 if nums.empty?
    
#   nums.uniq!.length
# end

# does not pass all the test cases so is inefective
