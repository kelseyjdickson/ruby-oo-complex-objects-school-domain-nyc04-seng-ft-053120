# code here!
require 'pry'
class School

    attr_accessor :name, :roster
    
    def initialize(name)
        @name = name
        @roster = {}
    end
    
    
    def add_student(student, grade)
        if roster.has_key?(grade)
            @roster[grade] << student
        else
            @roster[grade] = [student]
        end
    end

    def grade(grade)
        @roster[grade]
    end
    
    def sort
        roster.each do |grade, student|
        student.sort!
       end

    end

end
