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
    roster.each {|grade, students| students.sort!}
  end

end

