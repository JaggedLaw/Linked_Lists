require 'minitest/autorun'             # => true
require 'minitest/pride'               # => true
require_relative '../lib/linked_list'  # => true


class LinkedListTest < Minitest::Test  # => Minitest::Test

  def test_empty_head
    #when a list is created, head is empty
    list = LinkedList.new         # => #<LinkedList:0x007fa75116ea90 @head=nil>
    assert_equal(nil, list.head)  # => true
  end                             # => :test_empty_head

  def test_it_appends
    list = LinkedList.new             # => #<LinkedList:0x007fa75116d398 @head=nil>
    list.append("Smashing Pumpkins")  # => #<Node:0x007fa75116d168 @value="Smashing Pumpkins", @next_node=nil>
    list.append("Radiohead")          # => #<Node:0x007fa75116cf10 @value="Radiohead", @next_node=nil>
    list.print_list                   # => nil
  end                                 # => :test_it_appends

  def test_it_prepends
    list = LinkedList.new      # => #<LinkedList:0x007fa75116c858 @head=nil>
    list.prepend("books")      # => #<Node:0x007fa75116c628 @value="books", @next_node=nil>
    list.prepend("magazines")  # => #<Node:0x007fa75116c3d0 @value="magazines", @next_node=#<Node:0x007fa75116c628 @value="books", @next_node=nil>>
    list.prepend("movies")     # => #<Node:0x007fa75116c100 @value="movies", @next_node=#<Node:0x007fa75116c3d0 @value="magazines", @next_node=#<Node:0x007fa75116c628 @value="books", @next_node=nil>>>
    list.print_list            # => nil
  end                          # => :test_it_prepends

  def test_it_inserts
    list = LinkedList.new         # => #<LinkedList:0x007fa75116e478 @head=nil>
    list.prepend("republicans")   # => #<Node:0x007fa75116e248 @value="republicans", @next_node=nil>
    list.prepend("independents")  # => #<Node:0x007fa75116dff0 @value="independents", @next_node=#<Node:0x007fa75116e248 @value="republicans", @next_node=nil>>
    list.prepend("green party")   # => #<Node:0x007fa75116dd20 @value="green party", @next_node=#<Node:0x007fa75116dff0 @value="independents", @next_node=#<Node:0x007fa75116e248 @value="republicans", @next_node=nil>>>
    list.prepend("tea party")   # => #<Node:0x007fa75116dd20 @value="green party", @next_node=#<Node:0x007fa75116dff0 @value="independents", @next_node=#<Node:0x007fa75116e248 @value="republicans", @next_node=nil>>>
    list.print_list               # => nil
    arbitrary_position = 3
  end                             # => :test_it_inserts

end  # => :test_it_inserts

# >> Run options: --seed 57216
# >>
# >> # Running:
# >>
# >> .List -- (head)--> green party--> independents--> republicans-->
# >> .List -- (head)--> Smashing Pumpkins--> Radiohead-->
# >> .List -- (head)--> movies--> magazines--> books-->
# >> .
# >>
# >> Finished in 0.001941s, 2061.1746 runs/s, 515.2937 assertions/s.
# >>
# >> 4 runs, 1 assertions, 0 failures, 0 errors, 0 skips
