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
    
  end

end