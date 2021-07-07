class School
  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @roster = {} # {grade: ["name"]}
  end

  def add_student(name, grade)
    if roster.include?(grade)
      roster[grade] << name
    elsif
      roster[grade] = []
      roster[grade] << name
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted = {} #create empty hash to store sorted values
    roster.each do |grade, name| #iterate through roster hash
      sorted[grade] = name.sort  #in the new hash, add the sorted names array to the grade key
    end
    sorted #return hash
  end

end
