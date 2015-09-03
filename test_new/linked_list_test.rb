require 'minitest/autorun'             # => true
require 'minitest/pride'               # => true
require_relative '../lib/linked_list'  # => true


class LinkedListTest < Minitest::Test  # => Minitest::Test

  def test_empty_head
    #when a list is created, head is empty
    list = LinkedList.new         # => #<LinkedList:0x007fef78a65490 @head=nil>
    assert_equal(nil, list.head)  # => true
  end                             # => :test_empty_head

  def test_it_appends     #test it appends 1 node
    list = LinkedList.new                   # => #<LinkedList:0x007fef78a64e78 @head=nil>
    list.append("pizza")                    # => #<Node:0x007fef78a64c48 @value="pizza", @next_node=nil>
    assert_equal("pizza", list.head.value)  # => true
    #puts list.head.value                    # => nil
  end                                       # => :test_it_appends

  def test_it_appends_two     #test it appends onto a list with a node
    list = LinkedList.new                            # => #<LinkedList:0x007fef78a64608 @head=nil>
    list.append("pizza")                             # => #<Node:0x007fef78a643d8 @value="pizza", @next_node=nil>
    list.append("subs")                              # => #<Node:0x007fef78a64180 @value="subs", @next_node=nil>
    assert_equal("subs", list.head.next_node.value)  # => true
    list.head.next_node.value                        # => "subs"
  end                                                # => :test_it_appends_two

  def test_it_prepends
    list = LinkedList.new                   # => #<LinkedList:0x007fef78a6f968 @head=nil>
    list.prepend("coke")                    # => #<Node:0x007fef78a6f738 @value="coke", @next_node=nil>
    #list.prepend("salad")
    assert_equal("coke", list.head.value)
    #puts list.print_list
  end                                       # => :test_it_prepends

# to append multiple, figure out return 'tail' and then append it to the end of that one
# arbitrary position going to set a counter and once it gets to arbitrary number, set next_node to new value
# next test find the tail (it will have a nil next node) method: make attr_accessor for the tail
# find tail if tail return true
end  # => :test_it_prepends

# >> Run options: --seed 60325
# >>
# >> # Running:
# >>
# >> ...E
# >>
# >> Finished in 0.002862s, 1397.5484 runs/s, 1048.1613 assertions/s.
# >>
# >>   1) Error:
# >> LinkedListTest#test_it_prepends:
# >> ArgumentError: wrong number of arguments (2 for 1)
# >>     /Users/charissalawrence/Documents/Turing/Module1/LinkedList/lib/linked_list.rb:3:in `initialize'
# >>     /Users/charissalawrence/Documents/Turing/Module1/LinkedList/lib/linked_list.rb:40:in `new'
# >>     /Users/charissalawrence/Documents/Turing/Module1/LinkedList/lib/linked_list.rb:40:in `prepend'
# >>     /Users/charissalawrence/Documents/Turing/Module1/LinkedList/tests/linked_list_test.rb:32:in `test_it_prepends'
# >>
# >> 4 runs, 3 assertions, 0 failures, 1 errors, 0 skips
