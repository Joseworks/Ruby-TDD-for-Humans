require 'spec_helper'

describe Human do
  it 'has a version number' do
    expect(Human::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
