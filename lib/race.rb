require_relative 'car'

# Add Race class here

class Race
  attr_reader :cars 

  # instantiate car, beginning with an empty cars array, then running ready_go method
  def initialize
    @cars = []
    ready_go
  end

  # sets random speed
  def random_speed
    (rand * 125).round
  end

  # method runs when race is instantiated; creates 2 new car instances
  # runs accelerate method from Car class on both new cars and sets random speed
  def ready_go
    @cars << Car.new
    @cars << Car.new

    @cars.first.accelerate(random_speed)
    @cars.last.accelerate(random_speed)
  end

  # gets winner by sorting the two cars by speed; car with higher speed will be last and is the winner
  def winner
    @cars.sort_by(&:speed).last
  end

  # gets loser by sorting the two cars by speed; car with lower speed will be first and is the loser
  def loser
    @cars.sort_by(&:speed).first
  end

end