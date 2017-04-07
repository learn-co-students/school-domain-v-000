class School
  attr_accessor :roster, :name
  
  def initialize(name)
    @name = name
    @roster= {}
  end

  def add_student(names,grade)
     if @roster[grade]
       @roster[grade] << names
     else
       @roster[grade] = [names]
     end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_array = @roster.keys.sort
    new_roster = {}
    sorted_array.each { |index| new_roster[index] = @roster[index].sort }
    @roster=new_roster
  end
end