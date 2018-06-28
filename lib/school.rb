# code here!
class School


  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def grade(grade)
    @roster[grade]
  end

  def add_student(name, grade)
    @roster[grade] = [] unless @roster[grade]
    @roster[grade] << name
  end


    def sort
      @roster.each do |grade, students|
        students.sort!
      end
      @roster
    end
end
