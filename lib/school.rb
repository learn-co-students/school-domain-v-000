class School
  attr_accessor :roster
  attr_reader :add_student

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    if roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_hash = {}
    @roster.each do |grade, names|
      sorted_hash[grade] = names.sort
    end
    sorted_hash
  end

end
