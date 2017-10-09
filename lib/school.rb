# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if(!@roster.keys.include?(grade))
      @roster[grade] = []
    end
    @roster[grade].push(student)
  end

  def grade(num)
    @roster[num]
  end

  def sort
    hash = {}
    @roster.each_with_index do |(k,v), index|
      hash[k] = v.sort
    @roster[k] = hash[k]
    end
  end
end
