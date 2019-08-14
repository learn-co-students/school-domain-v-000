class School
    attr_accessor :name, :roster
    
    def initialize(name)
       @name = name
       @roster = {}
        end
    
    def add_student(name, grade)
        if roster[grade] == nil
            roster[grade] = []
        end
        roster[grade] << name
        end
    
    def grade(year)
        roster[year]
        end

    def sort
        sort = {}
        roster.each do |year, data|
            data.sort!
        end
        roster
        end
end
