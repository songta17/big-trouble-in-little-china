require "pry-byebug"

class Clock
  attr_reader :hour, :minute
  
  def initialize(hour:0, minute:0)
    @hour = hour
    @minute = minute
  end

  def to_s
    "#{"%02d" % @hour}:#{"%02d" % @minute}"
  end
end