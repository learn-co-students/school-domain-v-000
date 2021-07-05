class School

  attr_reader :name, :roster

  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

  def add_student(student, num)
    if roster.include?(num)
      roster[num] << student
    else
      roster[num] = []
      roster[num] << student
    end
  end

  def grade(num)
    roster[num]
  end

  def sort
    roster.each{|key, value| value.sort!}
  end

###### This method returns with grade in order as well #####
  #def sort
  #  roster.map{|key, value| value.sort!}
  #  roster.sort_by {|k, v| k }.to_h
  #end
  
  
end