require_relative '../rental'
require_relative '../book'
require_relative '../person'

describe Rental do 
  before (:each) do
    @person = Person.new(23, name: 'Hans', parent_permission: true)
    @book = Book.new('Croods', 'Micheal')
    @rental = Rental.new('2020/04/05', @book, @person)
  end

  it 'takes 3 parameters and returns a Rental object' do
    expect(@rental).to be_an_instance_of Rental
  end

  it 'should have a date' do
    expect(@rental.date).to eq '2020/04/05'
  end

  it 'should have a person' do
    expect(@rental.person).to eq @person
  end

  it 'should have a book' do
    expect(@rental.book).to eq @book
  end
end