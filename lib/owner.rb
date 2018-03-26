class Owner
  # code goes here
  attr_accessor :name
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes:[],cats:[],dogs:[]}
    @@all << self.name
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
    puts "I am a #{@species}."
  end
end
