# code here!
class School
attr_accessor :School_name, :roster, :grade

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

  def grade(num)
    @roster.keys.collect do |key|
      if key == num
        return key
      end
    end
  end

  def sort

  end

end
