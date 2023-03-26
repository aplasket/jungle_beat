require "./lib/jungle_beat"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe JungleBeat do
  it "exists" do
    jb = JungleBeat.new

    expect(jb).to be_a JungleBeat
  end

  it "contains_a_LinkedList" do
    jb = JungleBeat.new

    expect(jb.list.head).to be_nil
  end

  it "appends_multiple_nodes" do
    jb = JungleBeat.new

    expect(jb.append("deep doo ditt")).to eq("deep doo ditt")
    expect(jb.list.head.data).to eq("deep")
    expect(jb.list.head.next_node.data).to eq("doo")
    expect(jb.append("woo hoo shu")).to eq("woo hoo shu")
  end

  
end