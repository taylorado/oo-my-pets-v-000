class Owner
  # code goes here
  attr_accessor :owner_name

  @@all = []

  def initialize(owner_name)
    @owner_name = owner_name
    @pets = {fishes:[],cats:[],dogs:[]}
    @@all << owner_name
  end

  def name(name)
    @owner_name = name
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
