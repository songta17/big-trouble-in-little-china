require "pry-byebug"

class Clock
  attr_reader :hour, :minute

  # clock = Clock.new(hour: 10, minute: 0)
  #   assert_equal "10:03", (clock + Clock.new(minute: 3)).to_s
  
  def initialize(hour:0, minute:0)
    @hour = (hour + minute / 60)% 24
    @minute = minute % 60
  end

  def to_s
    "#{"%02d" % @hour}:#{"%02d" % @minute}"
  end

  def +(other)
    minute_new = @minute + other.minute
    Clock.new(hour: @hour, minute: minute_new)
  end
end