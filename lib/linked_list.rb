class LinkedList
  attr_reader :head, :num_nodes

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
   end
  end

  def to_string
    string = ""
    node.data
  end
end