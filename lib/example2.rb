class Dog
  attr_accessor  :name  #=> There are only methods on objects
  #attr_accessor adds 2 instance methods to our objects, a reader and a writer.
  # Dog #name method for the reader and Dog#name= method for the writer.
  # These methods will read/write to an instance variable @name

  #attr_accessor :name is equivalent to the code below:
  #def name=(name)
  #  @name = name
  #end
  #
  #def name
  #  @name
  #end

  def bark
    puts "Woof!!!#{@the_name}"
  end

end
