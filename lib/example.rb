#Methods = Behaviors
#Variables = Dataexit

class Dog
  #Body of the Dog Class

  def bark #Instance Method
    puts "Woof!!!#{@the_name}"
  end

  def name=(the_name_of_the_dog) #Scope Gate - Writer
    # The Method Scope
    # Write the property of a dog's name
    @the_name = the_name_of_the_dog
  end

  def name #Scope Gate   -Reader
    # The Method's Scope
    # Read the property of the dog's name
    return @the_name
  end

end
