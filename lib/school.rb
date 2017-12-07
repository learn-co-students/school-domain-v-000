class School
  attr_reader :school
  def initialize(school)
    @school = school
  end

  def roster
    @roster = Hash.new
  end

  def add_student(name, grade)
    @name = name
    @grade = grade
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
    sorted_roster = {}
    @roster.each do |grade, name|
      name.each do
        name.sort!
      end
      sorted_roster[grade] = name
    end
  end
end
