# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end


  def add_student(string, num)
    roster[num] ||= []
    roster[num] << string
  end

def grade(grade)
  return roster[grade]
end

def sort
  sorted = {}
  roster.each do |key, val|
    sorted[key] = val.sort
  end
  sorted
end

end
