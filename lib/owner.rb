class Owner
  # code goes here
  attr_accessor :name
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes:[],cats:[],dogs:[]}
    @@all << self
  end

  def name
    @name
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

  def self.count
    @@all.count
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fishname)
    fish = Fish.new(fishname)
    @pets[:fishes] << fish
  end
end
