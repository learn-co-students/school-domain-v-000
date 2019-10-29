# code here!
class School
  attr_accessor :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student=(name, grade)
    @name
    @grade
  end

  def add_student(name, grade)
    if @roster.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade=(grade)
    @grade = grade
  end

  def grade(grade)
    @roster[grade]
  end

  def sort=(grade)

  end

  def sort
    @roster.map do |key, array|
      @roster[key].sort!
    end
    @roster
  end
end
