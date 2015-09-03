class Node
  attr_accessor :value, :next_node, :counter  # => nil
  @counter = 0                                # => 0

  def count
    @counter = @counter + 1
  end                        # => :count

  def initialize(value, next_node)
    @value = value
    @next_node = next_node
    count
  end                               # => :initialize
end                                 # => :initialize

class LinkedList
  attr_accessor :head  # => nil

  def initialize
    @head = nil
  end             # => :initialize

  def append(value)
    #first time replace head value with new node
    if @head.nil?
      @head = Node.new(value, nil)
      @tail = @head
    else
      new_node = Node.new(value, nil)
      @tail.next_node = new_node
      @tail = new_node
    end
  end                                  # => :append

  def prepend(value)
    #first time replace head value with new node
    if @head.nil?
      @head = Node.new(value, nil)
    else
      new_node = Node.new(value, @head)
      @head = new_node
    end
  end                                    # => :prepend

  def insert(value, position)
    if @head.nil?
      @head = Node.new(value, nil)
    else
      new_node = Node.new(value, @head)
      @head = new_node
    end
  end                                    # => :insert

  def print_list
    print "List -- (head)--> "
    block = @head
    while block != nil
      print "#{block.value}--> "
      block = block.next_node
    end
    print "\n"
  end                             # => :print_list

end  # => :print_list

# new_list = LinkedList.new
# new_list.append("iphone")
# new_list.append("wallet")
# new_list
# new_list.print_list
