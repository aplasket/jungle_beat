require "./lib/node"

describe Node do
  it "test_it_exists" do
    node = Node.new("plop")
    
    expect(node).to be_a(Node)
  end

  it "has_readable_attributes" do
    node = Node.new("plop")
require 'pry'; binding.pry
    expect(node.data).to eq("plop")
    expect(node.next_node).to be_nil
  end

end