# visit https://dmoj.ca/problem/cco07p2 to view the problem

def compare(snowflake_count, snowflakes)
  snowflake_objects = snowflakes.map { |snowflake| SnowFlake.new(snowflake) }

end


class SnowFlake
  attr_reader :arms

  def initialize(arm_data)
    @arms = arm_data.split(" ").map { |int| int.to_i }
    raise 'Arm value cant be less than zero' if @arms.include?('-')
    raise 'Arm value cant be greater than 10_000_000' if @arms.include?('10000000')
  end
  
end