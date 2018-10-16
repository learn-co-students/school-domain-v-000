class School

  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster[grade] ||= []
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted = {}
    @roster.each do |k, v|
      sorted[k] = v.sort
    end
      sorted
  end
end
