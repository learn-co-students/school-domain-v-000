# code here!

class School
  attr_reader :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name, grade)
    # the example roster: {9: ['john', 'bob'], 10: ['melissa', 'enoch']}
    # first, is the grade a key? how do we get that key a value if there is no value (starting value)?
    @roster[grade] ||= []
    @roster[grade] << name # expects a hash of grade => name
  end


  def grade(grade)
    roster[grade]# expects an array of names
  end

  def sort
    sorted_students = {}
    @roster.each do |grade, name|
      sorted_students[grade] = name.sort
    end
    sorted_students# expects new hash of grade => array of names
  end
end
