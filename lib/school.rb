class School
  attr_reader :roster

  def initialize(school_name)
    @school = school_name
    @roster = {}
  end

  def add_student (name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade (grade)
    @roster[grade]
  end

  def sort
    @roster.collect do |grade, names|
      names.sort!
    end
    @roster
  end

end
