class Owner
  # code goes here
  attr_accessor :owner_name

  @@all = []

  def initialize(owner_name)
    @owner_name = owner_name
    @pets = {fishes:[],cats:[],dogs:[]}
    @@all_owners << owner_name
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
