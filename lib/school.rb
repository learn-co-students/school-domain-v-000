class School

    attr_accessor :roster

    def initialize(school_name)
      @school_name = school_name
      @roster = {}
    end

    def add_student(student_name, grade_level)
        roster[grade_level] ||= roster[grade_level] = []
        roster[grade_level] << student_name
    end

    def grade(grade_level)
      roster[grade_level]
    end

    def sort
      sorted_hash = {}
      roster.each do |grade_level,student_list|
        sorted_hash[grade_level] = student_list.sort
        # sorted_hash.store(grade_level, student_list.sort)
      end
      sorted_hash
    end

end
