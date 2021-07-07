class School
  attr_reader :roster
  
  def initialize(name)
    @name = name
    @roster = Hash.new
  end
  
  def add_student(student_name, grade)
    self.roster[grade] = [] unless roster.keys.include?(grade)
    self.roster[grade] << student_name
  end
  
  def grade(grade)
    self.roster[grade]
  end
  
  def sort
    sorted_roster = {}
    self.roster.each {|grade, students_array|
      sorted_roster[grade] = students_array.sort}
    sorted_roster
  end
  
end