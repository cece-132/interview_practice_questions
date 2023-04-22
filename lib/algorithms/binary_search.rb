require 'pry'

def search(array, target)
  # min value of an array 
  min = 0
  # max value of the array
  max = array.length - 1
  # 
  if array.length == 0
    return "#{target} was not found"
  else
    # i is the half the value of the array
    i = (min + max) / 2
    if target == array[i]
      return "#{target} found"
    else
      if array[i] < target
        # recursive logic
        return search(array[i+1, max], target)
      else
        return search(array[min, i-1], target)
      end
    end
  end
end

var_primes = [ 2, 3, 5, 7, 11, 13, 17, 19, 
               23, 29, 31, 37, 41, 43, 47, 
               53, 59, 61, 67, 71, 73, 79, 
               83, 89, 97
              ]

print search(var_primes, 67)