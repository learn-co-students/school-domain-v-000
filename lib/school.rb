require 'pry'

class School


  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def grade(grade)
    @roster[grade]
  end

  def add_student(name, grade)
    @roster[grade] = [] unless @roster.key?(grade)
    @roster[grade] << name unless @roster[grade].include?(name)
  end

  def sort
    @roster.each {|grade,names| names.sort!}
  end


end

#@roster.sort.to_h.each { |k, v| v.sort }

=begin

def sort   
    temp = {}
    @roster.sort.to_h.each do |k, v|
      temp[k] = v.sort
    end
    temp
  end

school = School.new("test")

school.add_student("Homer Simpson", 9)
school.add_student("Bart Simpson", 9)
school.add_student("Avi Flombaum", 10)
school.add_student("Jeff Baird", 10)
school.add_student("Blake Johnson", 7)
school.add_student("Jack Bauer", 7)


school = School.new("test")

school.add_student("AC Slater", 9)

school.add_student("Homer Simpson", 9)
      school.add_student("Jeff Baird", 10)
      school.add_student("Avi Flombaum", 10)
      school.add_student("Blake Johnson", 7)
      binding.pry
      school.sort


school = School.new("test")
binding.pry

school.add_student("AC Slater", 9)

binding.pry


school2 = School.new("test2")

binding.pry
=end

