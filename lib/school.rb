require 'pry'
class School
  attr_accessor :roster
  attr_reader :school_name


  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student=(name,grade)
    @name = name
    @grade = grade
  end

  def add_student(name,grade)
      if @roster.keys.include?(grade)
        @roster[grade] << name
      else
        @roster[grade] = []
        @roster[grade] << name
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    sorted_hash = {}
    @roster.each do |name,values|
      sorted_hash[name] = values.sort
    end
    sorted_hash
  end

end
