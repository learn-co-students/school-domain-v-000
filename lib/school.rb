require 'pry'
class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, integer)
    if @roster[integer]
      @roster[integer] << name
    else
      student_name = []
      student_name << name
      @roster[integer] = student_name
    end
  end

  def grade(int)
    @roster[int]
  end

  def sort

    @roster.each do |a, d|
      puts @roster[a] = d.sort
    end
    end

end
