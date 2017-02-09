require 'pry'
class School
  attr_accessor :name, :roster

         def initialize(name)
           @name = name
           @roster = {}
         end
               def add_student(student_name, grade)
                 #          wth are these
                 #               V
                 @roster[grade] ||= []
                 @roster[grade] << student_name
               end

                  def grade(grade)
                    @roster[grade]
                  end

                        def sort
                          sorted = {}
                          @roster.each do |grade, names|
                          sorted[grade] = names.sort
                          end
                          sorted
                          end
end
