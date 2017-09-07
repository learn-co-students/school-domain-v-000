# code here!
class School
  attr_reader :name, :roster
  attr_accessor

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.has_key?(grade)
      @roster[grade].include?(student) == false ? @roster[grade] << student : nil
    else
      @roster[grade] = Array.new << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each{|grade, students| students.sort!}

    @roster
  end

end
