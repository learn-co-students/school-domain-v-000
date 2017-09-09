# code here!
class School
    attr_accessor :roster
    
    def initialize(name)
        @name = name
        @roster = {}
    end
    
    def add_student(name, grade)
        if @roster[grade] == nil
            @roster[grade] = []
        end
        @roster[grade] << name
    end
    
    def grade(gr)
        @roster[gr]
    end
    
    def sort
        some_hash = {}
        roster.each do |key, values|
            some_hash[key] = values.sort
        end
        some_hash
    end
end
