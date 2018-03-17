class School

  def initialize(model)
    @roster = {}
    @model = model
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if !@roster.has_key?(grade)
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, names|
      names.sort!
    end
    @roster
  end


end