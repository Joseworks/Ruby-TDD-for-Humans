require 'spec_helper'

describe Human::Person do
  context 'Before breakfast a Person' do
    it 'should be hungry' do
      @new_human = Human::Person.new
      expect(@new_human.tummy).to eq('hungry')
    end
  end
end