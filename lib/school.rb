class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] if @roster[grade] == nil
    @roster[grade] << name
  end

  def grade(num)
    @roster[num]
  end

  def sort
    sorted = {}
    @roster.each do |grade, names|
      sorted[grade] = names.sort
    end
    sorted
  end
end
