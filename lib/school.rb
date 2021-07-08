class School
  attr_accessor :roster, :name
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if roster.key?(grade)
      roster[grade] << name
    else
      roster[grade] = []
      roster[grade] << name
    end
  end

  def grade(year)
    roster[year]
  end

  def sort
    sorted ={}
    roster.each {|k, v| sorted[k] = v.sort}
    sorted
  end
end
