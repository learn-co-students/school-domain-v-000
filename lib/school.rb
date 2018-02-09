# code here!
class School
    attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] = roster[grade] || []
    roster[grade] << name

  end

  def grade(name)
    roster[name]
  end

  def sort
      sort = {}
    roster.each do |k, v| v.sort
      sort
  end
end
end
