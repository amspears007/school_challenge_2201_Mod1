# ./lib/school.rb
class School
    attr_reader :start_time, :hours_in_school_day, :student_names
    def initialize(start_time, hours_in_school_day)
        @start_time = start_time
        @hours_in_school_day = hours_in_school_day
        @student_names = [] 
    end
    
    def add_student_name(name)
        @student_names << name
    end

    def end_time 
        # require 'pry'; binding.pry
        "#{@hours_in_school_day + @start_time.to_i}:00"
    end
    
    def is_full_time?
        @hours_in_school_day > 4
    end

    def standard_student_names
        @student_names.map do |student_name|
            student_name.capitalize
            # require 'pry'; binding.pry
        end
    end
end



    