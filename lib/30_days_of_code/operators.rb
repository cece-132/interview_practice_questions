require 'json'
require 'stringio'
require 'pry'

#
# Complete the 'solve' function below.
#
# The function accepts following parameters:
#  1. DOUBLE meal_cost
#  2. INTEGER tip_percent
#  3. INTEGER tax_percent

# int meal_cost: the cost of food before tip and tax
# int tip_percent: the tip percentage
# int tax_percent: the tax percentage

#

def solve(meal_cost, tip_percent, tax_percent)
  p (meal_cost + ((meal_cost * tip_percent) / 100) + ((meal_cost * tax_percent) / 100)).round
end

# # test case 0
# meal_cost = 12.00
# tip_percent = 20
# tax_percent = 8
# p solve meal_cost, tip_percent, tax_percent

# # test case 1
# meal_cost = 15.50
# tip_percent = 15
# tax_percent = 10
# p solve meal_cost, tip_percent, tax_percent

# # test case 2
# meal_cost = 15.50
# tip_percent = 15
# tax_percent = 10
# p solve meal_cost, tip_percent, tax_percent