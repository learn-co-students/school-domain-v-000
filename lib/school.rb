# code here!

class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] = [] unless @roster.has_key?(grade)
    roster[grade] << name
    roster
  end

    def grade(grade)
      roster[grade]
    end

    def sort
      sorted_roster = {}
      roster.each {|grade, name| sorted_roster[grade] = name.sort}
      sorted_roster
    end

end
