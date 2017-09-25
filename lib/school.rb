class School
  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
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
    @roster.map do |grade, name|
      @roster[grade] = name.sort
    end
    @roster
  end

end
