# code here!
class School
  attr_reader :name

  def initialize(name)
    @name=name
    @roster = Hash.new {|hash, key| hash[key]=[]}
  end

  def roster
    @roster
  end

  def add_student(student,grade)
   @roster[grade].push student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted = {}
    @roster.each {|value, key| sorted[value] = key.sort}
    sorted
  end

end