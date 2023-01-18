=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end
require 'pry'
class ResistorColorDuo

  def self.value(resistors)
    int1 = resistor_values[:"#{resistors[0]}"]
    int2 = resistor_values[:"#{resistors[1]}"]
    x = "#{int1}#{int2}"
    binding.pry
  end

  def self.resistor_values
    { "black": 0, "brown": 1, "red": 2, "orange": 3, "yellow": 4, "green": 5, "blue": 6, "violet": 7, "grey": 8, "white": 9 }
  end
end
ResistorColorDuo.value(%w[brown black])