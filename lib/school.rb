class School
  #roster ={[grade => array of students]}

  def initialize(school)
    @roster = Hash.new{|h,k| h[k]=[]}
    @school = school
  end

  def add_student(student,grade)
    @roster[grade] << student
  end

  def roster
    @roster
  end

  def grade(grade)
    output = []
    @roster[grade].each do |name|
      output << name
    end
    output
  end

  #sort {order students alphabetically by grade}
  def sort
    student_sort = {}
    output = {}
    @roster.each do | grade, student_list |
      student_sort[grade] = student_list.sort
    end
    output = student_sort.sort_by { |grade, students| grade }
    Hash[output]
  end

end
