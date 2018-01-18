
class School
attr_accessor :school, :roster


def initialize(school, roster = {})
    @school = school
    @roster = roster
end

def add_student(name, grade)

    if roster[grade]   # checks to see if grade is already in hash and is so
                       # dont create a new array for new grade otherwise do
        roster[grade] << name
    else
        roster[grade] = []
        roster[grade] << name
    end
end

def grade(grade)
    roster[grade]
end

def sort
    roster.each do |key, value|  #loops through each key value pair and sorts the value arrays
        value.sort!
    end
end

end
