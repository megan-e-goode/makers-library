require 'library'

describe Library do
  subject(:library)       { described_class.new(member_list_class) }
  let(:member_list_class) { double(:member_list_class, :new => member_list)}
  let(:member_list)       { double(:member_list) }

  describe '#add_member' do
    it('tells the member list to add a member') do
      expect(member_list).to receive(:add)
      library.add_member('12345', 'Bananaman')
    end
  end

  describe '#remove_member' do
    it 'tells the member list to remove a member' do
      expect(member_list).to receive(:remove)
      library.remove_member('12345')
    end
  end

  describe '#check_out' do
    it 'tells member_list to add item to member\'s checked out items' do
      expect(member_list).to receive(:check_out_item)
      library.member_item_checkout('book')
    end
  end
end
