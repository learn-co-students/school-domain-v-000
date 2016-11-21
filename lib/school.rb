
class School
  attr_reader :roster

    def initialize(obj)
      @roster = Hash.new {}
    end

    def add_student (value, key)
      if @roster.key?(key)
        @roster[key]. push(value)
      else
        @roster[key] = [value]
      end
    end

    def grade(key)
      @roster[key]
    end

    def sort
      @roster[9].sort!
      @roster.sort_by{|k,v|k}.to_h
    end

end
