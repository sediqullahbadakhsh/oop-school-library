require_relative '../nameable'
require_relative '../decorator'

describe Decorator do
  before(:each) do
    @decorator = Decorator.new('Sediqullah')
  end

  it 'should have a nameable' do
    expect(@decorator.nameable).to eq('Sediqullah')
  end
end