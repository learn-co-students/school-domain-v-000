# code here!

class School

attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {} #must be here, since it must need an empty roster when initialized and it can't be in def roster, since every time roster is called, it cannot reset
    #We have no school.roster =, so we don't need a writer method for @roster. Thus, attr_accessor is unneeded.
  end

  # def roster (just the reader method. Tells what's in the @roster collection. We don't want it)
  #   @roster
  # end

  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end
    # FIRST ATTEMPT:
    #@roster[grade] = []
    # @roster[grade] << name
    # @roster[grade] = [name] is the same. However, we're just overriding the value with each i teration.

    #Option 1: if @roster.has_key?(grade)
    #Option 2: if @roster[grade] == nil - WORST
    #Option 3: if @roster[grade] (if nil is the same as if false )
    #Option 4: roster[grade].nil? - WORST.
    #Option 5: @roster.include?(grade)
    #Option 6: @roster[grade] ||= []

  def grade(grade)
    @roster[grade]
    #self.roster[grade] (On this line, you're calling the method. It return @roster, which is a hash. On that hash, we're using or calling the bracket method)

    # is equal to: roster_hash= self.roster_hash#roster_hash[grade]
  end

  def sort
    self.roster.each do |grade, name|
    name.sort!
    end
  end
  #self.roster[grade] = name.sort!
#   self.roster[grade] << name
#   @roster = Hash.new{|h, k| h[k]= []}
# end
#   # School.each do |name, grade|
#   # Roster[grade] = []
end
