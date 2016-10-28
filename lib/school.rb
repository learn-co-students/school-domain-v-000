# code here!
class School
  attr_accessor :name, :roster
  def initialize (name)
    @name=name
    @roster={}
  end
  def add_student(name,grade)
    @roster[grade]==nil ? @roster[grade]=[name] : @roster[grade]<<name
  end
  def grade(g)
    @roster[g]
  end
  def sort
    @roster.each { |key, list| list.sort! }
    @roster
  end
end
