# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', 
# determine if the input string is valid.

# An input string is valid if:

# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# Every close bracket has a corresponding open bracket of the same type.


# Example 1:

# Input: s = "()"
# Output: true
# Example 2:

# Input: s = "()[]{}"
# Output: true
# Example 3:

# Input: s = "(]"
# Output: false


# Constraints:

# 1 <= s.length <= 104
# s consists of parentheses only '()[]{}'.

require 'pry'

# ITERATION 1

# def is_valid(s)
#   valid = "()[]{}"
#   ascii_values = valid.chars.map { |char| char.ord }

#   if s.chars.length.even?
#     collection = []
#     collection << s.include?('(') && s.include?(')')
#     collection << s.include?('{') && s.include?('}')
#     collection << s.include?('[') && s.include?(']')
#     if collection.include?(false)
#       false
#     else
#       true
#     end
#   else
#     false
#   end 
# end

# ITERATION 2

# def is_valid(s)
#   valid = "()[]{}"
#   ascii_values = valid.chars.map { |char| char.ord }

#   if s.chars.length.even?
#     collection = []
#     collection << (s.include?('(') && s.include?(')'))
#     collection << (s.include?('{') && s.include?('}'))
#     collection << (s.include?('[') && s.include?(']'))
#     if s.length == 2
#       if collection.count(true) == 1
#         true
#       else 
#         false
#       end
#     elsif s.length == 4
#       if collection.count(true) == 2
#         true
#       else 
#         false
#       end
#     elsif s.length == 6
#       if collection.count(true) == 3
#         true
#       else 
#         false
#       end
#     else
#       true
#     end
#   else
#     false
#   end
# end


# ITERATION 3

# def is_valid(s)
#   sorted  = s.chars.map { |char| char.ord }
#   pairs = []
#   sorted.each_slice(2).each do |pair|
#     if pair.length == 1
#       pairs << 51
#     else
#       pairs << (pair.last - pair.first)
#     end
#   end
# binding.pry
#   if pairs.sum > 50
#     false
#   elsif pairs.sum == 0
#     false
#   elsif pairs.sum < 6
#     true
#   end
# end

# ITERATION 4

PAIRS = {
    '(' => ')',
    '{' => '}',
    '[' => ']',
}.freeze

def is_valid(s)
  # needed to predict the obvious edgecase
  return true if s.empty?

  stack = []
  # needs to utilize a stack to keep track of the characters

  s.chars.each do |char|
      if PAIRS[char] # if true this is a starting char
          stack.push(char)
      else # if false this is an ending char
          # make sure than the ending char is the complement of the last item in the stack
          return false unless PAIRS[stack.pop] == char
      end
  end

  stack.empty?  
end

# p is_valid("()")
# p is_valid("()[]{}")
# p is_valid("])")
# p is_valid("([)]")
# p is_valid("((")
p is_valid("{[]}")