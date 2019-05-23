require 'book'

describe Book do 
  it 'can return it\'s title' do 
    book = Book.new("The Hunger Games", "Suzanne Collins", "12345")
    expect(book.title).to eq("The Hunger Games")
  end 

  it 'can return it\'s author' do 
    book = Book.new("The Hunger Games", "Suzanne Collins", "12345")
    expect(book.author).to eq("Suzanne Collins")
  end 

  it 'can return it\'s id number' do 
    book = Book.new("The Hunger Games", "Suzanne Collins", "12345")
    expect(book.id_number). to eq("12345")
  end 

  it 'can show the details of the book based on id' do 
    book = Book.new("The Hunger Games", "Suzanne Collins", "12345")
    expect(book.details).to eq({title: "The Hunger Games", author: "Suzanne Collins", id: "12345" })
  end
end 