class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end
  def grade(level)
    @roster[level] if roster.include?(level)
  end
  def sort
    @roster.each do |key, value|
      @roster[key] = value.sort
    end
  end
end
