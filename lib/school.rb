# code here!
class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student=(new_name, grade)
    @new_name = new_name
    @grade = grade
  end

  def add_student(new_name, grade)
      if @roster[grade]
        @roster[grade] << new_name
      else
        @roster[grade] = []
        @roster[grade] << new_name
      end
  end

  def grade(grade_num)
    @roster[grade_num]
  end

  def sort
    sorted_students = {}
    @roster.each do |name, grade|
      sorted_students[name] = grade.sort
    end
    sorted_students
  end

end
