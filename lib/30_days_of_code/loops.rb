require 'pry'
def multiples(number)
  n = 0
  10.times do |i|
    n += 1
    print "#{number} x #{n} = #{n * number}\n"
  end
end

n = 4
multiples(n)