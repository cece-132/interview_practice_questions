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

def remove_duplicates(nums)
  return 0 if nums.empty?
  
  k = 1
  i = 1

  while i < nums.length
    if nums[i] != nums[k - 1]
      nums[k] = nums[i]
      k += 1
    end
    i += 1
  end
  
  k
end
