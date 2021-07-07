# code here!

class School

  attr_accessor :roster



  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade]==nil
        @roster [grade]= []
        @roster[grade] << name
    else
      @roster[grade] << name
    end

  end

#call the values for the given grade in the roster hash
  def grade(grade)
    @roster[grade]
  end

#setup sort, perform each on each value in the hash which needs to arguments
# at each key for the hash, take the list of values and sort them
  def sort
    @roster.each do |key, value|
      @roster[key] = value.sort
    end
  end
end
