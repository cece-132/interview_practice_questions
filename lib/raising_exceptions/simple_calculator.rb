require 'pry'

class SimpleCalculator
  class UnsupportedOperation < StandardError
  end
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    begin 
      raise ZeroDivisionError.new("Division by zero is not allowed.") if second_operand == 0 && operation == "/"
      raise ArgumentError unless first_operand.is_a?(Integer)
      raise ArgumentError unless second_operand.is_a?(Integer)
      raise UnsupportedOperation.new("This is an unsupported operation") if !ALLOWED_OPERATIONS.include?(operation)

      answer = first_operand.public_send(operation, second_operand)
      "#{first_operand} #{operation} #{second_operand} = #{answer}"
    rescue ZeroDivisionError => e
      return e.message

    end
  end
end

SimpleCalculator.calculate(33, 0, "/")