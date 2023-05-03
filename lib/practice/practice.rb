
require 'pry'

def up_array(arr)
  arr.to_s.scan(/./).map {|num| num.to_i}
end

# p up_array([5, 7, 4]) == [5, 7, 5]

def maskify(cc)
  last_four = cc.split(//).last(4).join
  binding.pry
  ""
end

# p maskify("5512103073210694") == "############0694"

def get_middle(s)
  binding.pry
  if s.length.even?
    s[s.length/2-1] + s[s.length/2]
  elsif s.length.odd?
    s[s.length/2]
  end
end

# p get_middle("t") == 't'
# p get_middle("test") == 'es'
# p get_middle("testing") == 't'

def withdraw(amount)
  hundreds = evaluate(quotient_and_modulus(amount, 100))
  fifties = evaluate(quotient_and_modulus(amount, 50))
  twenties = evaluate(quotient_and_modulus(amount, 20))
  [hundreds[0], fifties[0], twenties[0]]
  binding.pry
end

def quotient_and_modulus(amount, bill)
  amount.divmod(bill)
end

def evaluate(arr)
  if arr[0] == 0
    0
  else
    arr
  end
end

p withdraw(230) == [1, 1, 4]