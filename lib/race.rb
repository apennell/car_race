require_relative 'car'

# Add Race class here
class Race
  attr_reader :car1, :car2

  def initialize()
    @cars = []
    ready_go
  end

  def random_speed
    (rand * 125).round
  end

  def ready_go
    @cars << Car.new
    @cars << Car.new

    @cars.first.accelerate(random_speed)
    @cars.last.accelerate(random_speed)
  end

  def winner
    @cars.sort_by(&:speed).last
  end

  def loser
    @cars.sort_by(&:speed).first
  end
end