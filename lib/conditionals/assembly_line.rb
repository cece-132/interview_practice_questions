require 'pry'

class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if @speed.between?(1, 4)
      (@speed * 221.0).abs
    elsif @speed.between?(5, 8)
      (@speed * 221.0).abs * 0.9
    elsif @speed == 9
      (@speed * 221.0).abs * 0.8
    elsif @speed == 10
      (@speed * 221.0).abs * 0.77
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end
end
AssemblyLine.new(1).working_items_per_minute