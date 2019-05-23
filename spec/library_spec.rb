require 'library'

describe Library do
  subject(:library)       { described_class.new(member_list_class, catalogue_class) }
  let(:member_list_class) { double(:member_list_class, :new => member_list)}
  let(:member_list)       { double(:member_list) }
  let(:catalogue_class)   { double(:catalogue_class, :new => catalogue)}
  let(:catalogue)         { double(:catalogue) }

  describe 'add_member' do
    it('tells the member list to add a member') do
      expect(member_list).to receive(:add)
      library.add_member('12345', 'Bananaman')
    end
  end

  it 'tells the memberlist to assign a book' do 
    expect(member_list).to receive(:assign_book)
    library.assign_book('123', 'hunger games')
  end 

  it 'tells the member list to return a book' do 
    expect(member_list).to receive(:return_book)
    library.return_book('123', 'hunger games')
  end 

  it 'tells the member list to retreive a member\'s details' do 
    expect(member_list).to receive(:member_details)
    library.member_details('123')
  end 

  it 'tells the catalogue to return a book\'s details' do 
    expect(catalogue).to receive(:book_details)
    library.book_details('123')
  end 
end
