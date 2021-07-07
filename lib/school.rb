class School
attr_accessor :name, :grade_levels, :student_names
attr_reader :roster

  def initialize(name)
    @name = name
    @roster = Hash.new { |g, n| g[n] = [] }
  end 

  def add_student(student_names, grade_levels)
    @roster[grade_levels] << student_names
  end

  def grade(grade_levels)
    grade_levels = @roster[grade_levels]
  end

  def sort
    @roster.each do |grade_levels, student_names|
      student_names.sort!
    end
  end

  # @roster[grade_levels] = student_names.sort

end
