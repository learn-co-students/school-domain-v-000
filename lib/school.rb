class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end


  def add_student(student_name, grade)
    @student_name = student_name
    @grade = grade
    if @roster.keys.detect {|k| k == @grade}
      @roster[@grade] << @student_name
    else
      @roster[@grade] = []
      @roster[@grade] << @student_name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |k, v|
      @roster[k] = v.sort 
    end
  end


end
