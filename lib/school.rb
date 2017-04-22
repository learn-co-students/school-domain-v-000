# code here!

class School

attr_reader :name, :roster



def initialize(name)
  @roster = {}
end

def add_student(name, grade)

if @roster[grade] == nil
  @roster[grade] = []
  @roster[grade] << name
else
   @roster[grade] << name
end
end

def grade(grade)
  @roster[grade]
end

def sort

grades = []

@roster.each do |num|
  grades << num[0]
end


grades.each do |grade|
@roster[grade] = @roster[grade].sort 
end

return @roster

end


end
