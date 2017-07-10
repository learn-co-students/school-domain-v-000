class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster.any? {|grade_key, name_array| grade_key == grade}
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @sorted_roster = {}
    @roster.each do |grade, name|
      sorted_name = name.sort {|kid_1, kid_2| kid_1 <=> kid_2}
      @sorted_roster[grade] = sorted_name
    end
    @sorted_roster
  end
end
