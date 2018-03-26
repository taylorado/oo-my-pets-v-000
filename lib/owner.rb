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

  def buy_dog(dogname)
    dog = Dog.new(dogname)
    @pets[:dogs] << dog
  end

  def buy_cat(catname)
    cat = Cat.new(catname)
    @pets[:cats] << cat
  end

  def walk_dogs
    @pets[:dogs].map {|dog| dog.mood = "happy"}
  end

end
