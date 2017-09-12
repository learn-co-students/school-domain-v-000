# code here!
class School

  def initialize(school)
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)

    if !@roster.include?(grade)
      @roster[grade] = []
    end

    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade].each  {|grade, name| puts name}
  end

  def sort
    student_list = []

    @roster.each do |grade, name|
      name.sort!
    end
    puts @roster
    @roster
  end

end
