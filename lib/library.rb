class Library
  attr_reader :member_list, :catalogue

  def initialize(member_list_class = MemberList, catalogue_class = Catalogue)
    @member_list = member_list_class.new
    @catalogue = catalogue_class.new
  end

  def add_member(id, name)
    member_list.add(id, name)
  end

  def assign_book(id, book)
    member_list.assign_book(id, book)
  end
  
  def return_book(id, book)
    member_list.return_book(id, book)
  end

  def member_details(id)
    member_list.member_details(id)
  end

  def book_details(id)
    catalogue.book_details(id)
  end
  
end
