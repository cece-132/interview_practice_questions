require 'pry'

def two_sum(nums, target)
  dict = {}
  nums.each_with_index do |n, i|
  #iterates through the array n = a single number in the array, i = is the position of that number
    if dict[target - n]
    #checks if the target - num == a key that already exists
    # if target - num = key, then key + num = target
      return dict[target - n], i
      #returns the position values
    end
    dict[n] = i
    #creates a new hash value if line 7 isn't true
  end
end

nums = [2,7,11,15]
target = 9

two_sum(nums, target)