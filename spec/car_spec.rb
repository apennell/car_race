require 'spec_helper'

describe Car do
  # makes new instance of car, but resets it to initial state at beginning of every test
  let(:car) { Car.new }

  # describe initialize method
  describe '#initialize' do
    # checks that speed starts at 0 when car instance is instantiated
    it 'has speed set to 0 when instantiated' do
      expect(car.speed).to eq(0)
    end
  end

  # describe accelerate instance method
  describe '#accelerate' do
    # prepare for tests by calling accelerate method with 60 as new_speed
    before { car.accelerate(60) }
    # when we accelerate a car, it's speed should be equal to 60
    it 'accelerates to new speed' do
      expect(car.speed).to eq(60)
    end
  end

end