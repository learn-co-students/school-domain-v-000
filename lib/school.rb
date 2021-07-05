class School

  attr_accessor :name, :roster

    def initialize(name)
      @name = name
      @roster = {}
    end

    def add_student (student_name, grade)
      @roster[grade] = [] if !@roster.has_key?(grade)
      @roster[grade] << student_name
    end

    def grade (student_grade)
      @roster[student_grade]
    end

    def sort
        keys_sorted_hash = {}
        @roster = @roster.sort
        @roster.collect {|sorted_keys| keys_sorted_hash[sorted_keys[0]] = sorted_keys[1].sort}
        @roster = keys_sorted_hash
    end

end
