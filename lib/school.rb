# code here!
class School
attr_accessor :roster

  def initialize(name)
    @name = name
    self.roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(grade)
    roster.values_at(grade).flatten
  end

  def sort
    roster.map{|grade, student| [grade,student.sort]}.to_h
  end

end
