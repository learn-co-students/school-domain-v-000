class School

  def initialize(name)
    @name=name
    @roster = {}
  end

  attr_accessor :name, :roster

  def add_student(student, grade)
    if roster.include?(grade)
      roster[grade] << student
    else
      roster[grade] = []
      roster[grade] << student
    end
  end

# roster = {"9" => ["Tim", "Jim"], "10" => ["Sally", "Harry"]}

  def grade(grade)
    roster[grade].map {|student| student}
  end

  def sort
    sorted_roster = {}
    y = roster.each {|grade, students| sorted_roster[grade]=students.sort}
    sorted_roster
  end

end

