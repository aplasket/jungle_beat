class JungleBeat
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def append(data)
    data.split(" ").each do |y|
      list.append(y)
    end
    data
  end
end