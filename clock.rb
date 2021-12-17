require "pry-byebug"

class Clock
  attr_reader :hour, :minute
  
  def initialize(hour, minute = 0)
    @hour = hour.values.first
    @minute = minute
  end

  def to_s
    "#{"%02d" % @hour}:#{"%02d" % @minute}"
  end
end