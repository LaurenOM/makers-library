class Book 
  attr_reader :title, :author, :id_number
  def initialize(title, author, id_number)
    @title = title
    @author = author
    @id_number = id_number
  end

  def details
    {title: title, author: author, id: id_number}
  end 

end