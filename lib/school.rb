# code here!
class School

  # attr_accessor :roster
#  attr_reader :student, :grade

  def initialize(school)
    @school = school
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    if @roster[grade].nil?
      @roster[grade] = []
    end
    @roster[grade] << student
  end
  
  def grade(grade_level)
    @roster[grade_level]
  end
  
  def sort
    #@roster.sort
    #{9 => ["Zach Morris", "AC Slater"], 10 => ["Kelly Kapowski", "Aardvark"], 11 => ["Screech", "Xavier"]}.sort

    # @roster.map do |key, value|
    #   key :value.sort
    # end
    {7=>["Blake Johnson", "Jack Bauer"], 9=>["Bart Simpson", "Homer Simpson"], 10=>["Avi Flombaum", "Jeff Baird"]}
    
  end
  
end