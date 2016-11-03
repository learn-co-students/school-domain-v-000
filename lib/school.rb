class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] == nil ? @roster[grade] = [name] : @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def name(name)
    @roster[name]
  end

  def sort()
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end

end
