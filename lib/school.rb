# code here!

class School
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade].empty?
        @roster[grade] = []
          @roster[grade] << name
    else
      @roster[grade] << name
    end 
  end

  def grade(grade)
    return roster[grade]
  end

end
