require_relative '../person'
require_relative '../rental'
require_relative '../book'

describe Person do
  before(:each) do
    @person = Person.new(25, name: 'SomeOne', parent_permission: true)
  end

  it 'should have a name' do
    expect(@person.name).to eq 'SomeOne'
  end

  it 'should have an Age' do
    expect(@person.age).to eq 25
  end

  it 'should have a can_use_services?' do
    expect(@person.can_use_services?).to eq true
  end

  it 'should have a correct_name' do
    expect(@person.correct_name).to eq 'SomeOne'
  end

  it 'should add a rental to person' do
    expect(@person.rentals.length).to eq 0
    book = Book.new('Unit Testing', 'Khan')
    @person.add_rental('2022/02/02', book)
    expect(@person.rentals.length).to eq 1
  end
end
