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
      placeholder = @head
      @head = Node.new(data)
      @head.next_node = placeholder
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


#initial thoughts on insert method:
 # # if @head == nil
    # #   @head = Node.new(data)
    # #   @head.data
    # # else
    # #   current_node = Node.new(data)


    # current_node = @head.index(0)
    # until current_node.next_node.nil?
    #   current_node.next_node.index(1)
    #   index += 1
    # end

    # # or could i do
    # i = 0
    # current_node = @head(i)
    # until current_node.next_node.nil?
    #   #assign i (index) to current_node
    #   #add 1 for next_node



    #current_node starts at @head, and go to next_node
    # make current_node = current_node.next_node 
    # until next_node = index
    # once next_node = index
    # return that node data
    # increase index_counter += 1
    # once index_counter = index, end

    # until the counter != num_elements
      # return the node data
      # counter += 1
    # end


    #thoughts on include method:
     # iterate through the linked list 
    # checking if any node data includes/matches
     #the arguement passed in
      
    #  # or :
    #  current_node = @head

    #  until current_node.next_node.nil?

    #  end