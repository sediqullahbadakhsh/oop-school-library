require_relative '../rental'
require_relative '../book'
require_relative '../person'

describe Rental do 
  context 'sheould add a book and a person' do
   book = Book.new('Croods', 'Micheal')
   person = Person.new(11, 18, 'Karim', parent_permission: true)
   rental = Rental.new('2022/02/02', book, person)

     it 'should create a rental for person' do 
        expect(person.rentals).to include(rental)
     end
     
     it 'should create a rental for book' do
      expect(book.rentals).to include(rental)
     end
  end 
end