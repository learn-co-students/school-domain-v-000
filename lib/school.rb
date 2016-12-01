class School
  attr_accessor :name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] = [] if !@roster.include?(grade)
    roster[grade] << student
  end

  def grade(level)
    roster[level]
  end

  def sort
    sorted = {}
      roster.each do |grade, student|
        sorted[grade] = student.sort
      end
    sorted
  end

end


# class School
#   attr_accessor :name, :roster
#
#   def initialize(name)
#     @name = name
#     @roster = {}
#   end
#
#   def add_student(student_name, grade)
#     # roster[grade] ||= []
#     roster[grade] = [] if !roster.include?(grade)
#     roster[grade] << student_name
#   end
#
#   def grade(student_grade)
#     roster[student_grade]
#   end
#
#   # this method should arrange the students in each grade by alphabetical order
#   def sort
#     sorted = {}
#     roster.each do |grade, students|
#       sorted[grade] = students.sort
#     end
#     sorted
#   end
# end

# class School
#   attr_accessor :color, :size, :material, :condition
#   attr_reader :name
#   attr_reader :grade
#
#   def initialize(name)
#     @name = name
#   end
#
#   def initialize(grade)
#     @grade = grade
#   end
#
#   def add_student(name, grade)
#     roster[grade] = [] if !roster.include?(grade)
#     roster << grade if !roster.include?(grade)
#     hash[new_key] << new_value_for_value_array
#   end
#
#   roster = {}
# end
