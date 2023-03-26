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

  def count
    list.count
  end

  def play
    beats = list.to_string
    `say -r 150 -v Boing #{beats}`
  end
end