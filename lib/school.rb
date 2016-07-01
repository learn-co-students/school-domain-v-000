class School
     def initialize(name="High School")
         @name = name
         @hash = {}
       end

       def name=(name)
        @name = name
       end

      #def grade(grade)
      #  @grade = grade
      #end

    def roster
     @hash
    end

    attr_reader :name
    attr_writer :roster
    attr_accessor :grade

    def add_student(name, grade)
      if @hash[grade] == nil
        @hash[grade] = []
        @hash[grade] << name
      else
        @hash[grade] << name
    end
  end

  def grade(grade_num)
    return @hash[grade_num]
  end

  def sort
    @hash.each do |grade, student|
      student.sort!
    return @hash
  end
  
end

end
