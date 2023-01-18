require 'pry'

class BirdCount
  def self.last_week
    [0, 2, 5, 3, 7, 8, 4]
  end

  def initialize(birds_per_day)
    @birds_per_day = birds_per_day
    
  end

  def yesterday
    @birds_per_day.last(2).first
  end

  def total
    @birds_per_day.sum
  end

  def busy_days
    busy = 0
    @birds_per_day.each do |count|
      busy += 1 if count >= 5
    end
    busy
  end

  def day_without_birds?
    if @birds_per_day.include?(0)
      true
    else
      false
    end
  end
end

# BirdCount.last_week
# BirdCount.new([0, 0, 1, 0, 0, 1, 0]).yesterday