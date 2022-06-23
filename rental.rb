class Rental
  attr_accessor :date, :person, :book

  def initialize(date, book, person)
    @date = date
    @person = person
    @book = book
    # book.rentals << self
  end

  def to_json(*args)
    {
      JSON.create_id  => self.class.name,
      'date' => @date,
      'book_title' => @book.title,
      'person_id' => @person.id,
    }.to_json(*args)
  end
end
