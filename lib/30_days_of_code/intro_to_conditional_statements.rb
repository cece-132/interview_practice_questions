require 'pry'

# Task
# Given an integer, , perform the following conditional actions:

# If  is odd, print Weird
# If  is even and in the inclusive range of  to , print Not Weird
# If  is even and in the inclusive range of  to , print Weird
# If  is even and greater than , print Not Weird
# Complete the stub code provided in your editor to print whether or not  is weird.


def weird_or_not(number)
  if number.even? && (number >= 2 && number <= 5)
    print 'Not Weird'
  elsif number.even? && (number >= 6 && number <= 20)
    print 'Weird'
  elsif number.even? && (number > 20)
    print 'Not Weird'
  else
    print 'Weird'
  end
end

# def weird_or_not(number)
#   case number
#   when number.even? && 2..5 then 
#     p 'Not Weird'
#   when 6..20 then 
#     p 'Weird'
#   else
#     if number > 20
#       p 'Not Weird' 
#     elsif number.odd?
#       p 'Weird'
#     end
#   end
# end

# N = 3
N = 24
weird_or_not(N)