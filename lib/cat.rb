class Cat
  attr_accessor :mood
  attr_reader :name
  # code goes here

  def initialize(name)
    @name = name
    @mood = "Nervous"
  end
end
