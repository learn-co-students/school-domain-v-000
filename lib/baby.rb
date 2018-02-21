# We want to keep track of all babies that are born:

#1. Where can we do that?
  # -  The only place we can hook into a baby being born is initialize
#2. Whos responsibility is it?

class Baby
  attr_accessor :name

  def initialize(name = nil)
    @name = name
    cry
    # Save the baby.  Put it somewhere that won't get lost.
      # 3. Where do we put that data?
      @all << ?
      # @all belongs to a particular baby
      # it should not be a particular baby's responsibility to remember
      # all the babies

      # It's the classes responsibility
      # What's a variable that operates on the class scope as opposed to the
      # instance
      # How does a baby refer to itsself?
  end

  def cry
    puts "Waaaaaaa!!!!"
  end
end


Baby.new # => initialize

#1. Make them cry when they are born.
#2. Give them a name (through reader/writer)
#3. Allow them to cry through method cry
#4. Allow name's to be optionally set when they are born

north_west = Baby.new
north_west.name = "North West"

blue_ivy = Baby.new
blue_ivy.name = "Blue Ivy"

north_west.name # => "North West"
blue_ivy.name # =>  "Blue Ivy"

north_west.cry # => "Waaaaaaa!!!!"
blue_ivy.cry  # =>  "Waaaaaa!!!!!"
