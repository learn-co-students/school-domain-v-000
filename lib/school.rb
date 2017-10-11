class School

  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if !@roster.include? grade
      @roster[grade] = []
    end
    @roster[grade] << student
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each do |key, value|
      @roster[key] = value.sort_by {|a| a}
    end
    return @roster
  end

end
