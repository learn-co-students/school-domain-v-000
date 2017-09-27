class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    grade_keys = @roster.keys
    if grade_keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @alpha_roster = {}
    @roster.each do |grade, array|
      @alpha_roster[grade] = array.sort
    end
    @alpha_roster
  end
end

school = School.new("Bayside")
school.add_student("Zach", 9)
school.add_student("AC", 10)
school.add_student("Kelly", 9)
puts school.name
puts school.roster
puts school.sort
