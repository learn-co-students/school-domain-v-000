# code here!
class School
  attr_accessor
  attr_reader :school

  def initialize(school)
    @school = school
    @roster = {}
  end


  def add_student(student_name, grade_int)
    if @roster.has_key?(grade_int)
      @roster[grade_int] << student_name
    elsif @roster == {} || !(@roster.has_key?(grade_int))
      @roster[grade_int] = []
      @roster[grade_int] << student_name
    end
  end

  def roster
    @roster
  end

  def grade(grade_int)
    list = ""
    @roster.each do |grade, roster|
      if grade_int == grade
        list = roster
      end
    end
    list
  end

  def sort
    @roster.sort_by {|grade, roster| roster}
  end

  def sort
    new_hash = {}
    @roster.each do |grade, roster|
      new_hash[grade] = []
      new_hash[grade] = roster.sort
    end
    new_hash
  end
end
