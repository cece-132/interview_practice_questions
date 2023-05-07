# visit https://dmoj.ca/problem/cco07p2 to view the problem

def compare(snowflake_count, snowflakes)
  snowflake_objects = snowflakes.map { |snowflake| SnowFlake.new(snowflake) }
end


class SnowFlake
  attr_reader :arms

  def initialize(data)
    @arms
  end
  
end