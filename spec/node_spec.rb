require "./lib/node"

describe Node do
  it "test_it_exists" do
    node = Node.new("plop")
    
    expect(node).to be_a(Node)
  end

  it "has readable attributes" do
    node = Node.new("plop")
    
  end

end