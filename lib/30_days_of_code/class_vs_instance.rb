require 'pry'

class Person
  attr_accessor :age
  def initialize(initialAge)
    @age = initialAge      
  end
  
  def amIOld()
      # case @age
      # when @age < 0 then 
      #     @age = 0
      #     print "Age is not valid, setting age to 0."
      # when @age > 18 then
      #     print "You are old."
      # when @age < 13 then
      #     print "You are young."
      # else
      #     if @age >= 13 && @age < 18
      #         print "You are teenager."
      #     end
      # end
      if @age >= 13 && @age < 18
          print "You are teenager."
      elsif @age < 0
          @age = 0
          print "Age is not valid, setting age to 0."
      elsif @age < 13
          print "You are young."
      else
          print "You are old."
      end
  end
  
  def yearPasses()
    @age += 1
  end
end

T = 4
# T = -1
# T = 10
# T = 16
# T = 18
for i in (1..T)do
    age = T
    p=Person.new(age)
    p.amIOld
    for j in (1..3)do
        p.yearPasses()
    end
    p.amIOld
  	puts ""
end      