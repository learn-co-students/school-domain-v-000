class School
  attr_accessor :roster
  attr_reader :school
  
  def initialize(school)
    @school = school
    self.roster = {}
  end
  
  def add_student(name, grade)
    if roster.empty? || !roster.key?(grade)
      roster[grade] = []
      roster[grade] << name
    else 
        roster[grade] << name
    end
    roster
  end
  
  def grade(num)
    students = []
    if roster[num].length > 0 
      roster[num].each {|student| students << student}
    end
    students
  end
  
  def sort
    sorted_list = {}
    if !roster.empty?
      roster.each do |grade, students|
        sorted_list[grade] = []
        students.sort.each {|student| sorted_list[grade] << student}
      end
    end
    sorted_list
  end
  
end
