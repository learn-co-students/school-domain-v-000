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

  def grade(x)
    roster[x]
  end

  def sort
      new_roster = {}
      roster.each do |grades, names|
        new_roster[grades] = names.sort
      end
      new_roster
  end
end
