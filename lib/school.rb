# code here!
require'pry'
class School
    attr_reader :name, :roster
    attr_accessor :roster
    # SCHOOL = {}
    def initialize(name, roster = {})
        @name = name
        @roster = roster
    end

    def add_student(name, num)
        if @roster.keys.include?(num)
            @roster[num] << name
        else
            @roster[num] = []
            @roster[num] << name
        end
        @roster
    end

    def grade(num)
        @roster[num]
    end

    def sort
        # binding.pry
        # puts @school.roster
        # @roster.map {|i, e| e.sort}
        # @roster
        @roster.each { |i,e|  e.sort!}
        @roster
    end
end
