# code here!
class School
  attr_accessor :roster

  def initialize(school)
    @school = school
    @roster = {}
  end


  def add_student(name, grade)
    @name = name
    @grade = grade

    unless @roster.include?(grade)
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @sorted_list = {}
    @roster.each {|grade, students| @sorted_list[grade] = students.sort}
    @sorted_list
  end

end
