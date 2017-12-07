# code here!
class School
  # attr_accessor :roster

  def initialize(school)
    roster = {}
  end


  def add_student(s_name, grade)
    roster[grade] ||= []
    roster[grade] << s_name
  end

  def grade(sub_grade)
    roster[sub_grade]
  end

  def sort
    new_hash = {}
    roster.each do |grade, student|
      new_hash[grade] = student.sort
    end
    new_hash
  end

end
