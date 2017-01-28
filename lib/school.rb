# code here!
class School

  attr_accessor :name

  ROSTER = {}

  def initialize(name)
    @name = name
    ROSTER[name] = {}
  end

  def add_student(student_name, grades)
  	@student_name = student_name
  	@grades = grades
    if !ROSTER[name].key?(grades)
      ROSTER[name][grades] = []
      ROSTER[name][grades] << student_name
    else
      if !ROSTER[name][grades].include?(student_name)
        ROSTER[name][grades] << student_name
      end
    end
  end

  def roster
    ROSTER[name]
  end

  def grade(grades)
    	ROSTER[name][grades]
  end

  def sort
    ROSTER[name].each do |year, person|
      person.sort!
    end  
    ROSTER[name]
  end
end
