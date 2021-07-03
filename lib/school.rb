class School
attr_accessor :name
attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade].push(name)
    # if roster.has_key? grade
    #   roster[grade] << name
    # else
    #   roster[grade] = []
    #   roster[grade] << name
    # end
  end

  def grade(grade)
    return roster[grade]
  end

  def sort
    # {9: [john, bob]}
    roster.each do |grade, students|
      students.sort!
    end
    roster
  end
end
