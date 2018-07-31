require "pry"
class School

attr_reader :roster

def initialize(name)
  @name = name
  @roster = {}
end

def add_student(name, grade)


  if @roster[grade]
  @roster[grade] << name
else
  @roster[grade] = [name]
  #@roster[grade] << name
    end

end

#def roster=(key, value)
#@roster[key] = value
#end
