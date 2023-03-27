class LinkedList
  attr_reader :head, :current_node

  def initialize
    @head = nil
  end

  def count
    if @head == nil
      count = 0
    else
      current_node = @head.next_node
      count = 1
      until current_node.nil?
        count += 1
        current_node = current_node.next_node
      end
    end
    count
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
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

  def prepend(data)
    if @head == nil
      @head = Node.new(data)
      @head.data
    else
      current_node = Node.new(data)
      current_node.next_node = @head
      @head = current_node
    end
    @head.data
  end

  def insert(index, data)
   current_node = @head
   counter = 1
   if index == 0 
    prepend(data)
   else
    while index != counter
      current_node = current_node.next_node
      counter += 1
    end
    placeholder = current_node.next_node
    insert_node = Node.new(data)
    current_node.next_node = insert_node
    insert_node.next_node = placeholder
    insert_node.data
   end
  end

  def find(index, num_elements)
    current_node = @head
    index_counter = 0
    elem_counter = 0
    string = ""
    
    until elem_counter == num_elements
      while index_counter != index
        current_node = current_node.next_node
        index_counter += 1
      end
      string << " " + current_node.data
      elem_counter += 1
      current_node = current_node.next_node
    end
    string.lstrip
  end

  def includes?(data)
    self.to_string.include?(data)
  end

  def pop
    current_node = @head
    until current_node.next_node.next_node.nil?
      current_node = current_node.next_node
    end
    final_node = current_node.next_node
    current_node.next_node = nil
    final_node.data
  end
end