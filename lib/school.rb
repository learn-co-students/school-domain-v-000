class School

  attr_reader :name


  def roster
  @roster
end


  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster.key?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
end


  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, student_name_arrays|
      student_name_arrays.sort!
    end
    @roster
  end

end
