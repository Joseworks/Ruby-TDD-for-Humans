require 'spec_helper'

describe Human::Person do
  context 'Before breakfast a Person' do
  before(:each) do
    @new_human = Human::Person.new
  end
    it 'should be hungry' do
      expect(@new_human.tummy).to eq('hungry')
    end
    it 'should be sleepy' do
      expect(@new_human.state).to eq('sleepy')
    end
  end
end