# code here!
class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.has_key? grade
      @roster[grade].push(name)
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|key, value|
      @roster[key] = value.sort
    }
    @roster
  end
end

# school = School.new("My school")
# school.roster
# school.roster.length
# school.add_student("Zach Morris",9)
# school.add_student("AC Slater", 9)
# school.add_student("Homer Simpson", 9)
# school.add_student("Jeff Baird", 10)
# school.add_student("Avi Flombaum", 10)
# school.add_student("Blake Johnson", 7)
# school.roster
# school.sort
