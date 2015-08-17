require 'spec_helper'

describe Human::Person do
  before(:each) do
    @new_human = Human::Person.new
  end

  context 'Before breakfast a Person' do
    it 'should be hungry'do
      expect(@new_human.tummy).to eq('hungry')
    end

    it 'should be sleepy' do
      expect(@new_human.state).to eq('sleepy')
    end

    it 'should not be awake' do
      expect(@new_human.state).not_to eq('awake')
    end

    it 'should not be full' do
      expect(@new_human.tummy).not_to eq('full')
    end
  end


  context 'After breakfast a Person' do
    describe '#goes_and_get_coffee' do
      it 'should be awake after drinking coffee' do
        @new_human.goes_and_get_coffee
        expect(@new_human.state).to eq('awake')
      end
    end

    describe '#goes_and_eat_breakfast' do
      it 'tummy should be full' do
        @new_human.goes_and_eat_breakfast
        expect(@new_human.tummy).to eq('full')
      end
    end
  end
end
