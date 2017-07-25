# code here!
class School
    # attr_accessor 
    attr_reader :name, :roster
    
    def initialize(name)
     @name = name
     @roster = {}
    end

    def add_student( name,grade)

        @roster[grade] = grade
        @roster[grade] << name
    end

end