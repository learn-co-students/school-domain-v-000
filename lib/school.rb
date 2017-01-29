require 'pry'
class School
  attr_accessor :school, :roster
  def initialize(school)
    @roster = {}
    @school = school
  end
  def add_student(value,key)
    binding.pry
    roster[key] = []
    if roster[key] = nil && roster[value] = nil
    binding.pry
    roster[key] << value
    binding.pry
  elsif roster[key] = key && value != nil
    #binding.pry
    roster[key] = []
    roster[key] << value
    #roster[new_key].delete(new_value_for_value_array)
    binding.pry
    end
  end
end
