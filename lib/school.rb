require 'pry'

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    # @roster[grade] = []
    # @roster[grade].push(name)
    # @roster[grade].push(name)
      # binding.pry
      # if @roster[grade] == nil
      #   @roster[grade] = []
      # end
      @roster[grade] ||= []
      @roster[grade] << name
        # elsif @roster[grade].include?(name)
        #   @roster[grade] << name[1]

    # end
  end


end
