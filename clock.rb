require "pry-byebug"

class Clock
  attr_reader :hour, :minute

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

  def ==(other)
    # clock1 = Clock.new(hour: 15, minute: 37)
    # clock2 = Clock.new(hour: 15, minute: 37)
    # binding.pry
    # clock1 == clock2
    @hour == other.hour && @minute == other.minute
  end
end