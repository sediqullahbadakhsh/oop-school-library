require_relative '../book'
require_relative '../student'
require_relative '../classroom'
require_relative '../rental'
require 'json'

describe Book do
  before(:each) do
    @book = Book.new('animals', 'Jon Doe')
  end

  it 'should have title' do
    expect(@book.title).to eq 'animals'
  end

  it 'should have author' do
    expect(@book.author).to eq 'Jon Doe'
  end

  it 'should have rentals' do
    expect(@book.rentals).to eq []
  end

  it 'add a rental' do
    @student = Student.new('20', 'khan')
    expect(@book.rentals.length).to eql 0
    @book.add_rental('2022-03-03', @student)
    expect(@book.rentals.length).to eql 2
  end

  it 'Create JSON string' do
    json = JSON.generate(@book)
    expect(json).to eq '{"json_class":"Book","title":"animals","author":"Jon Doe"}'
  end
end
