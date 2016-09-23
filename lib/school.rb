class School
  attr_accessor :name, :roster, :grade

    def initialize(name)
      @name = name
      @roster = {}
    end

    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name
    end

    def grade(grade)
      @roster[grade]
    end

    def sort
      @roster.each do |grade,name|
	       name.sort
       end
       @roster
    end

end
