require_relative '../nameable'
require_relative '../student'
require_relative '../capitalize_decorator'
require_relative '../trimmer_decorator'
require_relative '../decorator'

describe Decorator do
  before :each do
    person = Student.new(12, 'lynnzahraa')
    @name = Decorator.new(person)
    @capitalize = CapitalizeDecorator.new(@name)
    @trimmed = TrimmerDecorator.new(@name)
  end

  it 'returns the name' do
    expect(@name.correct_name).to eql('lynnzahraa')
  end

  it 'capitalizes the name' do
    expect(@capitalize.correct_name).to eql('Lynnzahraa')
  end

  it 'trims the name' do
    expect(@trimmed.correct_name).to eql('lynnzahra')
  end
end
