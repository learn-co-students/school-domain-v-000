require 'pry'

class School

  # attr_accessor
  attr_reader :roster

  def initialize(roster)
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    names = []
    @roster.each do |grades, name|
      if grades == grade
        names << name
      end
    end
    names.flatten
  end

  def sort
    sorted_hash = {}
    @roster.each do |grade, name|
      sorted_hash[grade] = name.sort
    end
      sorted_hash
  end
  #
  # def sort
  #   @roster.each do |grade, name|
  #     name.sort!
  #   end
  # end

end
