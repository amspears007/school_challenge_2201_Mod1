require 'rspec'
require 'pry'
require './lib/school'

RSpec.describe School do
  context 'Iteration 1' do
    it 'exists' do
      school = School.new('9:00', 7)

      expect(school).to be_a(School)
    end

    it 'has a start time' do
      school = School.new('9:00', 7)

      expect(school.start_time).to eq('9:00')
    end

    it 'has hours in a school day' do
      school = School.new('9:00', 7)

      expect(school.hours_in_school_day).to eq(7)
    end

    it 'starts with no student names' do
      school = School.new('9:00', 7)

      expect(school.student_names).to eq([])
      # require 'pry'; binding.pry
    end
  end

  context 'Iteration 2' do
    it 'can add student names' do
      school = School.new('9:00', 7)

      school.add_student_name('Aurora')
      school.add_student_name('tim')
      school.add_student_name('megan')

      expect(school.student_names).to eq(['Aurora', 'tim', 'megan'])
    end

    it 'can calculate end time' do
      # The `end_time` method should add the `hours_in_school_day` to the `start_time` and return the time in 24 hour format. 
      school_1 = School.new('9:00', 7)
      school_2 = School.new('9:00', 3)

      expect(school_1.end_time).to eq('16:00')
      expect(school_2.end_time).to eq('12:00')
    end
  end

  context 'Iteration 3' do
  #   * A school is considered full time if it has more than 4 hours in its school day.  
  # * The method `standard_student_names` will return a list of student names, capitalized ('megan' should become 'Megan').
    it 'can check if school is full time' do
      school = School.new('9:00', 7)
  
      expect(school.is_full_time?).to eq(true)
    end

    it 'can create student standard names' do
      school = School.new('9:00', 7)

      school.add_student_name('Aurora')
      school.add_student_name('tim')
      school.add_student_name('megan')

      expect(school.standard_student_names).to eq(["Aurora", "Tim", "Megan"])
      
    end
    # Add your own tests that follow the interaction pattern for Iteration 3
  end
  

  context 'Iteration 4' do
    # Add your own tests that follow the interaction pattern for Iteration 4
  end
end
