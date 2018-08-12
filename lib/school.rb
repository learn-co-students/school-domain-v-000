# code here!
class School
attr_accessor :name, :grade
attr_reader :school_name

  def initialize(school_name)
    @school_name=school_name
    @roster={}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @roster[grade] = [] if !roster.keys.include?(grade)
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.collect do |grade, student_list|
      @roster[grade]=student_list.sort
    end
    @roster
  end

end
