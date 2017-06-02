class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end


          #'pipe equals'? Need to figure out grade issue, if grade exists...
  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

          #related to add_student 'cleaning up'
  def grade(grade)
    @roster[grade]
  end

        #related to grade thing
  def sort
    sorted_list = {}
    @roster.each do |grade, student|
      sorted_list[grade] = student.sort
    end
    return sorted_list
  end
end
