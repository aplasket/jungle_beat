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

  it 'counts_number_of_nodes' do
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")

    expect(jb.count).to eq(6)
  end

  it "plays_the_data_outloud" do
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")

    expect(jb.count).to eq(6)
    expect(jb.list.count).to eq(6)
    expect(jb.play).to eq("")

    #testing for edge cases
    # jb.append("beep whooo heeha doop")
    # expect(jb.play).to eq("")
  end

  it "changes_rate" do
    jb = JungleBeat.new
    jb.append("deep dop dop deep")
    jb.rate(100)

    expect(jb.play).to eq("")
  end

  it "changes_voice" do
    jb = JungleBeat.new
    jb.append("deep dop dop deep")
    jb.voice("Daniel")
    jb.rate(100)

    expect(jb.play).to eq("")
  end

  it "resets_rate" do
    jb = JungleBeat.new
    jb.append("deep dop dop deep")
    jb.voice("Daniel")
    jb.rate(100)
    jb.play

    expect(jb.reset_voice).to eq("Boing")
    expect(jb.reset_rate).to eq(500)
    expect(jb.play).to eq("")
  end

  it "only_plays_accepted_data" do
    jb = JungleBeat.new
    jb.append("deep")
    jb.append("Mississippi")
    
    expect(jb.all).to eq("deep")
  end
end