class School
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def add_student(name, grade) #Adds student to a hash @roster with their grade as key and name as the value
    @roster[grade] = [] if !@roster.has_key?(grade) #Only creates the hash if not present already
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|key, value| value.sort!} #sorts the name array value associated with each key
  end
end
