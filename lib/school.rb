require 'pry'
class School

attr_accessor :name, :grade
attr_reader :roster

  def initialize(roster)
        roster = {}
    @roster = roster
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade]<< name

  end

#should take in an argument of a grade and return all of the students in that grade:
def grade(grade)
  roster[grade]
end

 def sort
  #sorted = {}
  roster.each do |key, values|
     #sorted[key]=values.sort
     values.sort!
    end
   roster
  end

end
