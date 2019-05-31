# code here!

class School
  attr_reader :name, :roster
  attr_writer :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    @roster.each do |k,v|
      v.sort!
    end
  end


end


school = School.new("Bayside High School")
school.add_student("bob", 9)
school.add_student("tim", 9)
puts school.grade(9)
