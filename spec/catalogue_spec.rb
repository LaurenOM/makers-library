require 'catalogue'

describe Catalogue do 
  subject(:catalogue)      { described_class.new(book_class) }
  let(:book_class)  { double(:book_class, :new => book) }
  let(:book) { double(:book,  :id_number => '12345')}

  it 'has an empty list of books by default' do
    expect(catalogue.books).to eq([])
  end 

  it 'adds a new book' do
    expect(book_class).to receive(:new)
    catalogue.add('The Hunger Games', 'Suzanne Collins', '12345')
  end

  it 'adds a book to the list' do
    catalogue.add('The Hunger Games', 'Suzanne Collins', '12345')
    expect(catalogue.books.length).to be(1)
  end

  it 'can return a book\'s details with id' do
    catalogue.add('The Hunger Games', 'Suzanne Collins', '12345')
    expect(book).to receive(:details)
    catalogue.book_details('12345')
  end 
end 