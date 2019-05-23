class Member
  attr_reader :id_number, :name, :checked_out_items

  def initialize(id_number, name)
    @id_number = id_number
    @name = name
    @checked_out_items = []
  end

  def check_out(item)
    checked_out_items.push(item)
  end

  def return_item(item)
    raise 'Item has not been checked out!' if !checked_out_items.include?(item)
    checked_out_items.delete(item)
  end

  def details
    puts "Id: #{@id_number}, Name: #{@name}, Checked Out: #{@checked_out_items}"
  end
end
