class JungleBeat
  attr_reader :list, :rate
  def initialize(rate = 500, voice = "Boing")
    @list = LinkedList.new
    @rate = rate
    @voice = voice
  end

  def append(data)
    data.split(" ").each do |y|
      @list.append(y)
    end
    data
  end

  def count
    @list.count
  end

  def play
    beats = @list.to_string
    `say -r #{@rate} -v #{@voice} #{beats}`
  end

  def rate(number)
    @rate = number
  end
end