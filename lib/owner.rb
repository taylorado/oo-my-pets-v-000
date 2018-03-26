class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes:[],cats:[],dogs:[]}
    @@all << self
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
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each  {|species, individual_pets| individual_pets.each {|pet| pet.mood = "nervous"}}
    @pets = {fishes:[],cats:[],dogs:[]}
  end

  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end

end
