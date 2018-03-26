class Owner
  # code goes here
  attr_accessor :owner_name

  def initialize(owner_name)
    @owner_name = owner_name
    @pets = {fishes:[],cats:[],dogs:[]}
  end
end