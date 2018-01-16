require 'pry'
class School
  attr_accessor :roster
  def initialize(name)
    @name = name
    @roster ={}
  end


  def add_student(name, grade)
    self.roster[grade] ||= []
    self.roster[grade] << name
  end

  def grade(gr)
    self.roster[gr]
  end

  def sort
    sorter = {}
    self.roster.each do |grade, names|
      sorted[grade] = names.sort
    end
    sorted
  end
end
