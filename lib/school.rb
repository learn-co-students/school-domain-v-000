class School
#Part 1 and 2

  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
#Part 3

  def add_student(name, grade)
    if @roster[grade] == nil
       @roster[grade] = [name]
    else
      @roster[grade] << name
    end
  end
  
#Part 4
  
  def grade(grade)
    roster[grade]
  end

#Part 5

  def sort
    sorted_students = {}
    roster.each do |key, values|
      sorted_students[key] = values.sort
    end
    sorted_students
  end
end  

school = School.new("Bayside High School")
#puts school.roster
school.add_student("Zach Morris", 9)
#puts school.roster
school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)
#puts school.roster
puts school.grade(9)
puts school.sort