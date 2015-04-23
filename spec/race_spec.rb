require 'spec_helper'

describe Race do
  # makes new instance of race, but resets it to initial state at beginning of every test
  let(:race) { Race.new }

  # describe initialize method
  describe '#initialize' do
    # check that there's a cars array and that it has 2 car instances in it
    it 'has a cars array with 2 cars in it' do
      expect(race.cars.length).to eq 2
    end

    # check that each car instance is set to a speed above 0
    it 'accelerates each car above 0' do
      expect(race.cars.first.speed).to_not eq 0
      expect(race.cars.last.speed).to_not eq 0
    end
  end

  # describe winner method
  describe '#winner' do
    # check that winner is a Car
    it 'is a Car' do
      expect(race.winner).to be_instance_of(Car)
    end

    # check that winner and loser are not the same
    it 'is not the same as loser' do
      expect(race.winner).to_not eq(race.loser)
    end
  end
  
  describe '#loser' do
    # check that loser is a Car
    it 'is a Car' do
      expect(race.loser).to be_instance_of(Car)
    end  

    # check that winner and loser are not the same
    it 'is not the same as winner' do
      expect(race.loser).to_not eq(race.winner)
    end
  end

end