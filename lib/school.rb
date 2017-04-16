# code here!
class School
  attr_accessor :name
  attr_reader :roster
  def initialize(name)
    @name = name
    @roster={}
  end
  def add_student(student_name, grade)
    if @roster[grade]==nil
      @roster[grade]=[]
    end
    @roster[grade]<<student_name
  end
  def grade(grade)
    @roster[grade]
  end
  def sort
    @roster.each do |grade, students|
      students.sort! do |x,y|
        x<=>y
      end
      @roster
    end
  end

end

school = School.new("school")

school.add_student("Homer Simpson", 9)
school.add_student("Jeff Baird", 10)
school.add_student("Avi Flombaum", 10)
school.add_student("Blake Johnson", 7)
puts school.roster
puts school.roster[10]
