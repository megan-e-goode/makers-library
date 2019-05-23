class Library
  attr_reader :member_list

  def initialize(member_list_class = MemberList)
    @member_list = member_list_class.new
  end

  def add_member(id, name)
    member_list.add(id, name)
  end

  def remove_member(id)
    member_list.remove(id)
  end

  def member_item_checkout(item)
    member_list.check_out_item(item)
  end
end
