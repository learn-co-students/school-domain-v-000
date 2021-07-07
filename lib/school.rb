class School
  attr_accessor :roster, :student_name, :school_name

  def initialize(school_name)
    @school_name = school_name
    @roster = Hash.new{ |grade, student_name| grade[student_name] = [] }
  end

  def add_student(student_name, grade)
      @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade].each do |student_name|
    end
  end

  def sort
       @roster.each do |grade, student_name|
         student_name.sort!{|a,b| a<=>b }
      end
   end


end
