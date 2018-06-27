require 'pry'
class School

  attr_accessor :roster
  attr_writer :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade_num)
    self.grade = grade_num

    if @roster[grade_num]
      @roster[grade_num] << name
    else
      @roster[grade_num] = [name]
    end
  end

  def grade(grade_num)
    @roster[grade_num]
  end

  def sort
    @roster.sort.to_h.each do |grade_num, students|
      @roster[grade_num] = students.sort
    end
    @roster
  end

end
