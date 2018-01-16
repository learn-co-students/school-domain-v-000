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
    self.roster.each do |grade, names|
      names = names.sort do |a, b|
        a <=> b
      end
      self.roster[grade] = names
      self.roster
    end
  end
end
