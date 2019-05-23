class MemberList
  attr_reader :members

  def initialize(member_class = Member)
    @members = []
    @member_class = member_class
  end

  def add(id, name)
    members.push(@member_class.new(id, name))
  end

  def assign_book(book, id)
    members.each do |member| 
      if member.id_number == id
        member.checkout(book)
      end
    end
  end
  
  def return_book(book, id)
    members.each do |member| 
      if member.id_number == id
        member.return_item(book)
      end
    end
  end

  def member_details(id)
    members.each do |member|
      if member.id_number == id
        member.details
      end
    end 
  end
end
