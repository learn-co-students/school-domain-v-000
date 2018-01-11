# code here!
class School

  attr_reader :name, :roster

  def initialize(school_name)
    @name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.collect do |key, value|
      @roster[key].sort!
    end

    @roster
  end

end
