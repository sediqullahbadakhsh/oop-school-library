require_relative '../decorator'
require_relative '../nameable'

describe Decorator do
  before(:each) do
    @decorator = Decorator.new('Sediqullah')
  end

  it 'should have a nameable' do
    expect(@decorator.nameable).to eq('Sediqullah')
  end

  # it 'should return the name' do
  #   expect(@decorator.correct_name).to eq('Sediqullah')
  # end
end
