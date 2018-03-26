class Owner
  # code goes here
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes:[],cats:[],dogs:[]}
    @@all << @name
  end

  def name(name)
    @name = name
  end

  def pets
    @pets
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
end

  def count
    @@all.count
  end
end
