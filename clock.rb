require "pry-byebug"

class Clock
  attr_reader :hour, :minute

  # def test_subtract_minutes
  #   # skip
  #   clock = Clock.new(hour: 10, minute: 3)
  #   assert_equal "10:00", (clock - Clock.new(minute: 3)).to_s
  # end
  
  def initialize(hour:0, minute:0)
    @hour = (hour + minute / 60)% 24
    @minute = minute % 60
  end

  def to_s
    "#{"%02d" % @hour}:#{"%02d" % @minute}"
  end

  def +(other)
    minute_new = @minute + other.minute
    hour_new = @hour + other.hour
    Clock.new(hour: hour_new, minute: minute_new)
  end

  def -(other)
    hour_new = @hour - other.hour
    minute_new = @minute - other.minute
    Clock.new(hour: hour_new, minute: minute_new)
  end
end