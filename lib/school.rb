# code here!
class School

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster=(roster)
    @roster = roster
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    roster[grade] ||= roster[grade] = []
    roster[grade] << name
  end

  def grade (grade)
    roster[grade]
  end

  def sort
    sorted_hash = {}
    roster.each do |grade, student_list|
      sorted_hash[grade] = student_list.sort
    end
    sorted_hash
  end

end
