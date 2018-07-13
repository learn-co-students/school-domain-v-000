# code here!
class School

attr_accessor :name, :roster

  def initialize (name)
    @name = name
    @roster = {}
  end

def add_student(student, grade)
  roster[grade] ||= []
  roster[grade] << student
end

def grade(grade)
roster.detect do |x, y|
  if x == grade
    return y
  end
end
end

def sort
sorted_hash = {}
roster.each do |x, y|
  sorted_hash[x] = y.sort
end
sorted_hash

end

end
