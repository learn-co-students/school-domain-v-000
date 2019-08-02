require "pry"

class School 
  attr_accessor :grade, :roster
  attr_reader :name
  ROSTERS = { }
  
  def initialize(name)
    @name = name
  end

  def roster 
    ROSTERS
  end

  def add_student(name, grade)
    #binding.pry
    #ROSTERS[grade] ||= ROSTERS[grade] = [ ]
    if ROSTERS[grade] == nil
      ROSTERS[grade] = [ ]
      ROSTERS[grade] << name
    elsif ROSTERS[grade] != nil && ROSTERS[grade].include?(name) == false
      ROSTERS[grade] << name
    end
  end
  
  def grade(grade)
    ROSTERS[grade]
  end
  
  def sort
    #ROSTERS.sort_by{|k, v| [v, k]}.to_h
    ROSTERS.map do |key, value|
      ROSTERS[key].sort_by{|v| v}
    end
  end
end

#def initialize(brand)
    #@brand = brand
    #if BRANDS.include?(brand) == false
      #BRANDS << brand
    #end
  #end