class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}

    def add_student(st_name, st_grade)
     if @roster[st_grade] != nil
       @roster[st_grade] << st_name
    else
       @roster[st_grade] = [st_name]
     end
   end


    def grade(st_grade)
      roster[st_grade]
    end

    def sort
      @roster.each do |key, value|
        value.sort!
      end
    end
end

end
