
# code here!

class School
attr_accessor :name

  def initialize(name)
    @name = name

  end
  def roster=(roster)
    @roster = roster

  end
  def roster
    @roster = {}

  end

  def add_student=(name, grade)
    @name = name
    @grade = grade
  end

  def add_student(name, grade)
    roster.each do |key, value|
      if key == grade
        if value.length == 0
            roster[grade] = []

        else
          roster[grade]  << name
        end
      end
    end
  end



  def grade(grade)
    roster[grade]
  end

end

school = School.new("Bayside High School")
school.roster
school.add_student("AC Slater", 10)
