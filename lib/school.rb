class School
  attr_reader :school, :roster
  def initialize(school)
    @school = school
    @roster = Hash.new
  end

  def add_student(name, grade)
    @name = name
    @grade = grade
    if @roster[grade] == nil
      @roster[grade] = []
    end
    @roster[grade] << name

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
