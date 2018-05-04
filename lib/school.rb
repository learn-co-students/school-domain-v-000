class School

  def initialize(school)
      @school = school
      @roster = {}
    end

    def roster
      @roster
    end

    def add_student (name, grade)
      @roster[grade] = [] if !@roster.has_key?(grade)
      @roster[grade] << name
    end

    def grade (grade)
      @roster.values_at(grade).flatten
    end

    def sort
        keys_sorted_hash = {}
        @roster = @roster.sort
        @roster.collect {|sorted_keys| keys_sorted_hash[sorted_keys[0]] = sorted_keys[1].sort}
        @roster = keys_sorted_hash
    end

end
