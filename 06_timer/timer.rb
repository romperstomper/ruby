class Timer
  attr_accessor :seconds
  attr_accessor :minutes
  def initialize(secs=0)
    @seconds = secs
  end

  def time_string
    seconds = @seconds % 60
    h=(@seconds/3600).to_s.rjust(2, '0')
    m = ((@seconds/60)%60).to_s.rjust(2, '0')
    s = seconds.to_s.rjust(2, '0')
    "#{h}:#{m}:#{s}"
  end

end
