# code here!
class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if roster.include?(grade)
      roster[grade] << name
    else
      roster[grade] = []
      roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sort_list = {}
    @roster.each {|grade, names|
      sort_list[grade]=names.sort
    }
    sort_list
  end

end
