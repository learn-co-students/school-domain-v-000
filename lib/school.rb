class School

  def initialize (name)
    @name = name
    @roster = {}
  end



  def add_student(student, grade)
    if @roster.keys.include?(grade)
       @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def roster
    @roster
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.map do |grade, array|
      [grade,  array.sort {|x,y| x <=> y}]
    end.to_h
  end

end
