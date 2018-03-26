class Owner
  # code goes here
  attr_accessor :name
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
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

  def species(species)
    @species = species
  end

  def species
    @species
  end
end
