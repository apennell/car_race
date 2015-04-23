# Add Car class here
# car class that can accelerate to a certain speed

class Car
  attr_reader :speed

  # set initial speed to 0 when instantiating a car
  def initialize
    @speed = 0
  end

  # set new speed to speed called when accelerate method is called
  def accelerate(new_speed)
    @speed = new_speed
  end

end