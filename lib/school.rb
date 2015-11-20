class School
   attr_accessor :school, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name, grade)
      roster[grade] = [] unless roster.include?(grade)
      roster[grade] << name
  end

  def grade(number)
    roster[number]
  end

  def sort
    sort = {}
    roster.each do |grade, name|
      sort[grade] = name.sort
    end
    sort
  end
end