class School 

  attr_reader :name, :roster

  def initialize(name,roster = {})
    @name = name
    @roster = roster
  end

  def add_student(name, grade_level)
    @roster[grade_level] = [] unless @roster.include?(grade_level)
    @roster[grade_level] << name
  end

  def grade(grade_level)
    @roster[grade_level]
  end

  def sort
    sorted_roster = {}
    @roster.each do |grades, students|
      
      sorted_roster[grades] = students.sort
    end
      sorted_roster
  end

end 
