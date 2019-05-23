class MemberList
  attr_reader :members

  def initialize(member_class = Member)
    @members = []
    @member_class = member_class
  end

  def add(id, name)
    members.push(@member_class.new(id, name))
  end

  def remove(id)
    members.delete_if { |member| member.include? id }
  end

  def check_out_item(item)
    @member_class.check_out(item)
  end
end
