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

  it "prepends_node_to_beginning_of_list" do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")

    expect(list.to_string).to eq("dop plop suu")
    expect(list.count).to eq(3)
  end

  it "inserts_nodes_at_specified_position" do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")
    expect(list.to_string).to eq("dop woo plop suu")
    
    list.insert(0, "heeha")
    expect(list.to_string).to eq("heeha dop woo plop suu")

  end

  it "finds_and_returns_elements " do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    expect(list.to_string).to eq("deep woo shi shu blop")
    expect(list.find(2,1)).to eq("shi")
    expect(list.find(1,3)).to eq("woo shi shu")
  end

  it "test_includes_method" do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    expect(list.includes?("deep")).to be true
    expect(list.includes?("dep")).to be false
  end

  it "removes_and_returns_last_element" do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    expect(list.pop).to eq("blop")
    expect(list.pop).to eq("shu")
    expect(list.to_string).to eq("deep woo shi")
  end
end