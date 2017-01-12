# code here!
class School
  attr_reader :name

  def initialize(name)
    @name=name
    @roster={}
  end

  def roster
    @roster
  end

  def roster=(roster)
    @roster=roster
  end

  def add_student(name, grade)
    @roster[grade] == nil ? @roster[grade]=[name] : @roster[grade] << name
  end

  def grade(grade)
    array=[]
    @roster.each do |student_grade, student_name|
      array << student_name if student_grade == grade
    end
    array.flatten
  end

  def sort
    @roster.each{|key, value| @roster[key]=value.sort}
    @roster
  end

end