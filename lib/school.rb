class School

  attr_accessor :name, :roster

  def initialize(model)
    @model = model
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(grades)
    roster[grades]
  end

  def sort
    sort = {}
    roster.each do |grade, students|
      sort[grade] = students.sort
    end
    sort
  end

end
