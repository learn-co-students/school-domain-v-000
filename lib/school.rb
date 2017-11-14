# code here!

class School
  # attr_reader = :roster

  def initialize(name)
    @school=name
    @roster= {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
      if @roster != nil && @roster.key?(grade)

        @roster.each do |k, v|
          if k == grade
            v << name
          end
        end

      else
        @roster[grade]=[name]
      end
    end

  def grade(grade)
     @roster.collect do |k,v|
       if grade == k
          return v
       end
     end
  end

  def sort
    sorted={}
    @roster.collect do |k,v|
      sorted[k]=v.sort
    end
    sorted
  end
end
