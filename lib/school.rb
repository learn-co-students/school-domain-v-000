# code here!
require 'pry'

class School
  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name=name
    @roster={}

  end

  def add_student(student,gr)
    if !@roster[gr]
      @roster[gr]=[]
    end
    @roster[gr]<<student
  end

  def grade(gr)
    @roster[gr]
  end

  def sort
    @roster.each do |gr,student_array|
      student_array.sort!
    end
    #binding.pry
    @roster
  end
end
