# code here!
class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
    def grade(grade)
      @roster[grade]
    end
    def sort
      @roster.collect do |grade, names|
        @roster[grade] = names.sort!
      end
      @roster
    end

  end

end
school = School.new("Hayside High School")
