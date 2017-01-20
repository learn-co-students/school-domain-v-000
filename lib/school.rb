class School

  attr_accessor :roster, :student
  attr_reader :school

  def initialize(school, roster = {})
    @school = school
    @roster = roster
  end

  def add_student(student, grade)
    if @roster.length > 0
      if @roster.include?(grade)
        if !@roster[grade].include?(student)
          @roster[grade] << student
        end
      else
        @roster[grade] = []
        @roster[grade] << student
      end
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      students.sort
    end
  end
  
end

