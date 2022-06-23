require_relative '../book'

describe Book do 
   
  before :each do
    @book = Book.new("animals", "Jon Doe")
  end

  it 'should have title' do
    expect(@book.title).to eq "animals"
  end

  it 'should have author' do
    expect(@book.author).to eq "Jon Doe"
  end

  it 'should have rentals' do
    expect(@book.rentals).to eq []
  end
end