class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    @student = student
    @grade = grade
    if @roster.has_key?(@grade)
      @roster[@grade] << @student
    else
      @roster[@grade] = []
      @roster[@grade] << @student
    end
  end

  def grade(grade)
    @grade = grade
    @roster[@grade]
  end

  def sort
    @roster.each do |key, array|
      @roster[key] = array.sort
    end
  end

end
