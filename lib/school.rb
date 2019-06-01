require 'pry'

class School
  def initialize (name)
    @name = name
    @roster = {}
  end

attr_accessor :name, :roster

def add_student (name, grade)
  # binding.pry
  if @roster[grade] == nil
    @roster[grade] = []
  end
  @roster[grade] << name
end

def grade (grade)
  @roster [grade]
end

def sort
  @roster.each do |key, value|
    value.sort!
  end
end

end
