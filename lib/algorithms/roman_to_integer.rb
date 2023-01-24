require 'pry'

# https://leetcode.com/problems/roman-to-integer/
# https://joe-mccann.dev/blog/translating-roman-numerals-to-integers

# Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

# Symbol       Value
# I             1
# V             5
# X             10
# L             50
# C             100
# D             500
# M             1000

# For example, 2 is written as II in Roman numeral, 
# just two ones added together. 
# 12 is written as XII, 
# which is simply X + II. 
# The number 27 is written as XXVII, 
# which is XX + V + II.

# Roman numerals are usually written largest to smallest from left to right. 
# However, the numeral for four is not IIII. 
# Instead, the number four is written as IV. 
# Because the one is before the five we subtract it making four. 
# The same principle applies to the number nine, 
# which is written as IX. 
# There are six instances where subtraction is used:

# I can be placed before V (5) and X (10) to make 4 and 9. 
# X can be placed before L (50) and C (100) to make 40 and 90. 
# C can be placed before D (500) and M (1000) to make 400 and 900.
# Given a roman numeral, convert it to an integer.

# Example 1:

# Input: s = "III"
# Output: 3
# Explanation: III = 3.
# Example 2:

# Input: s = "LVIII"
# Output: 58
# Explanation: L = 50, V= 5, III = 3.
# Example 3:

# Input: s = "MCMXCIV"
# Output: 1994
# Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
 

# Constraints:

# 1 <= s.length <= 15
# s contains only the characters ('I', 'V', 'X', 'L', 'C', 'D', 'M').
# It is guaranteed that s is a valid roman numeral in the range [1, 3999].

  # def self.roman_to_int(s)
  #   valid_chars = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}
  #   characters = s.split("")
  #   total = 0
  #   counter = 0

  #   characters.each do |chr|
  #     if valid_chars.include?(chr)
  #       new_char_value = valid_chars[chr]
  #       last_char_value = valid_chars[characters[counter - 1]]
  #       if last_char_value < new_char_value

  #       binding.pry
  #       total += valid_chars[chr]
  #       counter += 1
  #     else
  #       return "Invalid Character"
  #     end
  #   end
  #   total
  # end


  def roman_to_int(s)
    valid_chars = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}

    string = s.split("")    
    num_values = []
    string.each do |char|
        num_values << roman_nums[char]
    end

    total = 0
    num_values.each_with_index do |num, index|
        if num_values[index + 1] && num >= num_values[index + 1]
            total += num 
        else
            total -= num 
        end
    end
    total
  end

# pp roman_to_int("III") == 3
# pp roman_to_int("LVIII") == 58
# pp roman_to_int("MCMXCIV") == 1994
pp roman_to_int("MCMXCIV")

# def roman_to_int(s)
#   special_matches = s.scan(/IV|IX|XL|XC|CD|CM/)
#   if special_matches
#     special_sum = special_matches.map { |m| special_numerals[m]}.sum
#     special_matches.each { |m| s.gsub!(m, '') }
#   end
#   normal_sum = s.each_char.map { |c| numerals[c] }.sum  
#   return (special_sum + normal_sum) if special_sum
  
#   normal_sum
# end

# def numerals
#   {
#     'I' => 1,
#     'V' => 5,
#     'X' => 10,
#     'L' => 50,
#     'C' => 100,
#     'D' => 500,
#     'M' => 1000
#   }
# end

# def special_numerals
#   {
#     'IV' => 4,
#     'IX' => 9,
#     'XL' => 40,
#     'XC' => 90,
#     'CD' => 400,
#     'CM' => 900
#   }
# end