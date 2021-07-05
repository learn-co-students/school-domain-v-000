# code here!
class School
  attr_accessor :school, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end



  def add_student(name,grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(year)
    return roster[year]
  end

  def sort
    roster.each do |grade, name|
      puts "#{grade}-"
      name.sort!
      puts "#{name}"
    end
  end

end
