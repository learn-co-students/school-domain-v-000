# code here!
class School
  attr_reader :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    self.roster[grade] = [] if self.roster[grade] == nil
    self.roster[grade] << name
  end

  def grade(grade_num)
    return self.roster[grade_num]
  end

  def sort
    sorted = Hash[self.roster.sort]
    sorted.each {|g, n| sorted[g] = n.sort}
    return sorted
  end

end
