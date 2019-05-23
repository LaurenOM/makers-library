class Catalogue 
  attr_reader :books
  def initialize(book_class = Book)
    @books = []
    @book_class = book_class
  end

  def add(title, author, id)
    @books.push(@book_class.new(title, author, id))
  end

  def book_details(id)
    @books.each do |book|
      if book.id_number == id 
        book.details
      end
    end
  end
end 