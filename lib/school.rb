class School

attr_reader :name, :roster

  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

  def add_student(student,grade)
    if @roster[grade] == nil
      @roster[grade] = []
    end
    @roster[grade] << student
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    @roster.each do |key,value|
      value.sort!
    end
  end
end
