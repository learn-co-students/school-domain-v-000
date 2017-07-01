# code here!
class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||= [] #expands to: roster[grade] || roster[grade] = []
    #spelled out: if roster[grade] is false, nil, or undefined, then set an empty array as the value for the key 'grade', otherwise do nothing. So if grade '8' hasn't been made a key yet it will be and also have it's value set to an empty array, if it has been made then nothing happens.
    roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.map do |grade, name|
      roster[grade]= name.sort
    end
    roster
  end

end
