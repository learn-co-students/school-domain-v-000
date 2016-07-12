# code here!


class School
  
  attr_accessor :roster

  def initialize(school_name)
    @school_name=school_name
    @roster = {}
  end

  def add_student(name, grade)
    
      if !@roster.has_key?(grade)
         @roster[grade] = []
         @roster[grade]<<name
       else
        @roster[grade] << name
      end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, names|
      names.sort! do |a, b|
          a<=>b
      end
    end
  end
end

# school=School.new("boulder")
# school.add_student("james",9)
# puts school.roster
