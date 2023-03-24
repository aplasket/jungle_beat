class LinkedList
  attr_reader :head, :num_nodes, :current_node

  def initialize
    @head = nil
    @num_nodes = 0
  end

  def count
    @num_nodes
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
      @num_nodes += 1
      @head.data
    else
      make_current_node(data)
    end
  end
  
  def make_current_node(data)
    current_node = @head
    until current_node.next_node.nil?
      current_node = current_node.next_node
    end
    current_node.next_node = Node.new(data)
    current_node.next_node.data
  end

  def to_string
    string = ""
    string << @head.data
    current_node = @head.next_node
    until current_node.nil?
      string << " " + current_node.data
      current_node = current_node.next_node
    end
    string
  end
end


# extra:
# if @head.nil?
#   count = 0
# else
#   current_node = @head.next_node
#   count = 1
#   until current_node.next_node.nil?
#     count += 1
#   end
# end

#first iteration which only works for appending 2 data points.
# past 2, it'll just re-write the last one in to the new data.
# example:
# list = LinkedList.new
#     list.append("doop")
#     list.append("deep")
#     list.append("boop")
# this will return a linked list with boop replacing deep


# def append(data)
#   if @head == nil
#     @head = Node.new(data)
#     @num_nodes += 1
#     @head.data
#   else
#     @head.next_node = Node.new(data)
#     @num_nodes += 1
#     @head.next_node.data
#  end
#end