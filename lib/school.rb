# code here!

class School
  attr_reader :school_name, :add_student, :roster



  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    if roster[grade] == nil
    roster[grade] = [name]
  else
    roster[grade] << name
  end
end

  def grade(grade)
    roster[grade]
  end

  def sort
    new_sort_roster = {}
    roster.each do |grade, names |
      new_sort_roster[grade] = names.sort
      end
       new_sort_roster
    end

end
