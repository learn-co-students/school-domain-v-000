class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    roster[grade] ||= [] #if the grade exists, then roster[grade] (will maintain this value)==>truthy value
    #if grade has falsy value, then set array. if roster[grade] is truthy then it's just the left, if falsey
    #set to array on right.
    #a ||= b  if a is false, nil or undefined, then evaluate b and set a to the result
    #a || a = b
    roster[grade] << student_name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted_roster = {}
    roster.each do |grade, student|
      sorted_roster[grade] = student.sort
    end
    sorted_roster
  end

end
