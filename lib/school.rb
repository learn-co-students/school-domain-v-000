# code here!

class School
attr_accessor :roster


  def initialize(name)
    @school = name
    @roster = Hash.new
  end

  def roster
    @roster
  end

 def add_student(student, grade)
    @roster[grade] = [] if roster.length == 0 || roster[grade] == nil
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    new_h = @roster
   @roster.each do |key,value|
      new_h[key] = value.sort
    end
   new_h
 end


end
