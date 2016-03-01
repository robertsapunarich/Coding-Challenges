# A node in a linked list contains a value and a pointer
# to the next node in the list.
class LinkedListNode
  attr_accessor :value, :next_node
 
  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
  attr_accessor :data

  def initialize
    @data = nil
  end

  # Push a value onto the stack
  def push(value)
    @data = LinkedListNode.new(value, @data)
  end

  # Pop an item off the stack
  # Remove the last item that was pushed onto the
  # stack and return the value to the user
  def pop
    @data
  end

end


def print_values(list_node)
  print "#{list_node.value} -->"
  if list_node.next_node.nil?
    print "nil\n"
    return
  else
    print_values(list_node.next_node)
  end
end

def reverse_list(list)
  reversed = Stack.new
  while list
    reversed.push(list.value)
    list = list.next_node
  end
  reversed.pop
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)


print_values(node3)

puts "-----"

revlist = reverse_list(node3)

print_values(revlist)

