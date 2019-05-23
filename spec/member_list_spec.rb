require 'member_list'

describe MemberList do
  subject(:list)      { described_class.new(member_class) }
  let(:member_class)  { double(:member_class, :new => member) }
  let(:member)        { double(:member, :id_number => "123", :name => "Lauren") }

  it 'initializes with an emtpy list of members' do
    expect(list.members).to be_empty
  end

  describe '#add' do
    it 'creates a new user' do
      expect(member_class).to receive(:new)
      list.add('12345', 'Bananaman')
    end

    it 'adds a member to the list' do
      list.add('12345', 'Bananaman')
      expect(list.members.length).to be(1)
    end
  end

  describe '#remove' do
    it 'removes a user from the list' do
    end
  end

  it 'can assign a book to a member' do 
    list.add("123", "Lauren")
    expect(member).to receive(:checkout)
    list.assign_book("Hunger Games", "123")
  end 

  it 'can return a book from a member' do 
    list.add("123", "Lauren")
    expect(member).to receive(:return_item)
    list.return_book("Hunger Games", "123")
  end 

  it 'can return a member details with id' do
    list.add("123", "Lauren")
    expect(member).to receive(:details)
    list.member_details("123")
  end 

end
