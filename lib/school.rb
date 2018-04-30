# code here!
class School
  attr_accessor :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student,grade)
    if @roster.keys.include?(grade)
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster.each do |grades, students|
      if grades == grade
        return students
      end
    end
  end

  def sort
    newroster = {}
    @roster.each do |grades,students|
        newroster[grades] = []
        newroster[grades] << students.sort!
    end

  end


end
