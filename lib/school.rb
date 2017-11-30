# code here!

class School

  attr_accessor :name

  def initialize(name)
    @name = name
    @ROSTER = {}
  end

  def roster
    #puts "#{@ROSTER}"
    @ROSTER
  end

  def add_student(name, grade)
    if @ROSTER.include?(grade) == false
      #puts "add grade #{grade}"
      @ROSTER[grade] = []
    end
    #puts "add student #{name} to grade #{grade}"
    @ROSTER[grade] << name
  end

  def grade(grade)
    @ROSTER.each do |student_grade, array|
      if student_grade == grade
        #puts "#{array}"
        return array
      end
    end
  end

  def sort
    @ROSTER.collect do |grade, array|
      @ROSTER[grade] = array.sort
    end
    @ROSTER
  end

end
