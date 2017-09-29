# code here!
class School
  attr_accessor :student, :grade, :roster, :name 

  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

  def add_student(student, grade)
    if @roster[grade] == nil
      @roster[grade] = []
    end
      @roster[grade] << student
  end

  def grade(num)
    @roster[num]
  end

  def sort
    new_hash = {}
    @roster.each do |key, value|
       new_hash[key] = value.sort
     end
     new_hash
   end
end
