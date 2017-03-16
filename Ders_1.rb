class Animal
  def initialize
    # puts "Creating a new animal."
  end
  def set_name(new_name)
    @name=new_name
  end
  def get_name
    @name
  end
  def name
    @name
  end
  def name=(new_name)
    if new_name.is_a?(Numeric)
      puts "Name must be a string."
    else
      @name = new_name
    end
  end
end

animal = Animal.new
animal.set_name("Charizard")
#puts animal.get_name
animal.name = "Sophie"
#puts animal.name

#puts :derek
#puts :derek.to_s
#puts :derek.class
#puts :derek.object_id

class Dog
  attr_accessor :name , :height , :weight
  def bark
    return puts "generic bark"
  end
end

class GermanShepard < Dog
  def bark
    return puts "loud bark"
  end
end

#dog = Dog.new
#dog.name = "Rover"
#puts dog.name

max= GermanShepard.new
max.name = "max"
#printf "%s goes %s \n ",max.name,max.bark()

module Smart
  def act_smart
    return "E=mc2"
  end
end

module Animal_mod
  def make_sound
    puts "Grrr"
  end
end

module Human
  attr_accessor :name,:weight,:height
  def run
    puts self.name + "runs"
  end
end

class Dog_2
  include Animal_mod
end

rover = Dog_2.new
#rover.make_sound

class Scienctist
  include Human
  prepend Smart
  def act_smart
    return "E=nc2"
  end
end

einstein = Scienctist.new
einstein.name = "Einstein "
#einstein.run
#puts einstein.name + "says " + einstein.act_smart
