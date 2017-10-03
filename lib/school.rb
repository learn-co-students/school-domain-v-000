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
    @roster[grade] ||= [] # what is this again? or equals?
    @roster[grade] << name # expects a hash of grade => name # if this was an empty array, wouldn't you also need the grade key?
  end


  def grade(grade)
    roster[grade]# expects an array of names
  end

  def sort
    sorted_students = {}
    @roster.each do |grade, name|
      sorted_students[grade] = name.sort # how are we sure this will produce an "array" of names?
    end
    sorted_students# expects new hash of grade => array of names
  end
end
