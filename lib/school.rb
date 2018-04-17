class School
  attr_reader :school, :roster

  def initialize(school)
    @school= school
    @roster = {}
  end

  def add_student(name,grade)
    if @roster[grade] != nil
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key,value|
      value.sort!
    end
  end
end
