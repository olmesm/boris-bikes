class Bike

  attr_writer :working

  def initialize
    @working = true
  end

  def report_broken
    @working = false
  end

  def working?
    @working
  end

end
