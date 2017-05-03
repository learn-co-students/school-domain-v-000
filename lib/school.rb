# code here!

class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(students, grade)
    #if !@roster.include?(grade)
    #  @roster[grade] = []
    #end
    @roster[grade] ||= []
    @roster[grade] << students
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each do |grade, students|
        @roster[grade] = students.sort
    end
    @roster
  end
end
