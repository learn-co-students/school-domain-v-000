# code here!
class School
  attr_accessor
  attr_reader  :names, :roster

  def initialize(name)
    @name=name
    @roster = {}
  end

  def add_student(name,grade)
    if !roster.has_key? grade
    roster[grade] = []
  end
    roster[grade] << name
  end

  def grade(grade)
  roster[grade]
  end

  def sort

    roster.collect do |key , value|
      value.sort!
    end
    roster.sort
roster
  end
end
