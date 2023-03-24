require "./lib/linked_list"
require "./lib/node"

describe LinkedList do
  it "test_it_exists" do
    list = LinkedList.new

    expect(list).to be_a(LinkedList)
  end

  it "has_a_head that is nil" do
    list = LinkedList.new

    expect(list.head).to be_nil
  end

  it "can_append_nodes" do
    list = LinkedList.new
    list.append("doop")
  
    expect(list.head.next_node).to be_nil
    expect(list.head.data).to eq("doop")
    expect(list.count).to eq(1)
  end

  it "can_append_multiple_nodes" do
    list = LinkedList.new
    list.append("doop")
   
    list.append("deep")
    expect(list.head.next_node.data).to eq("deep")
  end

  it "generates_a_string_of_all_nodes" do 
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    expect(list.to_string).to eq("doop deep")
  end

  
end