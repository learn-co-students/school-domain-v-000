class School
  
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster.has_key?(grade) ? @roster[grade] << name : @roster[grade] = [] << name
  end

  def sort
    @roster.map do |k, v|
      @roster[k] = v.sort
    end
    @roster
  end

  def grade(grade)
    @roster[grade]
  end
end
