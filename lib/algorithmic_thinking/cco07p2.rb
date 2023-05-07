# visit https://dmoj.ca/problem/cco07p2 to view the problem

def compare(snowflake_count, snowflakes)
  snowflake_objects = snowflakes.map { |snowflake| SnowFlake.new(snowflake) }
end


class SnowFlake
  attr_reader :arms

  def initialize(arm_data)
    @arms = arm_data.split(" ").map do |int| 
              checks(int.to_i)
            end
  end

  def checks(int)
    if int.negative?
      raise 'Arm value cant be less than zero' 
    elsif int > 10000000
      raise 'Arm value cant be greater than 10_000_000'
    else
      int.to_i
    end
  end
  
end