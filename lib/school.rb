# code here!
class School
  attr_reader :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    unless @roster.include?(grade)
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @sorted_roster = {}
    @roster.each do |grade, name|
      @sorted_roster[grade] = name.sort
    end
    @sorted_roster
  end

end
