class Owner
  # code goes here
  attr_accessor :owner_name

  @@all_owners = []

  def initialize(owner_name)
    @owner_name = owner_name
    @pets = {fishes:[],cats:[],dogs:[]}
    @@all_owners << owner_name
  end

  def self.all
    @@all_owners
  end

  def self.reset_all
    @@all_owners = []
end

  def count
    @@all_owners.count
  end
end
