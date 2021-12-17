require "pry-byebug"

class Clock
  attr_reader :hour, :minute
  #assert_equal "02:00", Clock.new(hour: 1, minute: 60).to_s
  def initialize(hour:0, minute:0)
    @hour = (hour + minute / 60)% 24
    @minute = minute % 60
  end

  def to_s
    "#{"%02d" % @hour}:#{"%02d" % @minute}"
  end
end