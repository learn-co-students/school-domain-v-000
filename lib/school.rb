class School

  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def add_student(student, grade)

    if @roster.has_key?(grade)
      @roster[grade] << student
    else
      @roster[grade] = Array.new
      @roster[grade] << student
    end

  end

  def roster #reader for roster
    @roster
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end
  end
end
