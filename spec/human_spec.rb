require 'spec_helper'

describe Human::Person do
  subject { described_class.new }

  context 'Before breakfast, a Person' do
    it 'should be hungry'do
      expect(subject.tummy).to eq('hungry')
    end

    it 'should be sleepy' do
      expect(subject.state).to eq('sleepy')
    end

    it 'should not be awake' do
      expect(subject.state).not_to eq('awake')
    end

    it 'should not be full' do
      expect(subject.tummy).not_to eq('full')
    end
  end


  context 'After breakfast, a Person' do
    describe '#goes_and_get_coffee' do
      it 'should be awake after drinking coffee' do
        subject.goes_and_get_coffee
        expect(subject.state).to eq('awake')
      end
    end

    describe '#goes_and_eat_breakfast' do
      it 'tummy should be full' do
        subject.goes_and_eat_breakfast
        expect(subject.tummy).to eq('full')
      end
    end
  end


end
