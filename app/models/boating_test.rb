class BoatingTest
	attr_accessor :student, :instructor, :status, :name

	@@all = []
	def initialize(student_instance, boating_test_name, status, instructor_instance)
		@student = student_instance
		@name = boating_test_name
		@status = status
		@instructor = instructor_instance
		@@all << self
	end

	def self.all
		@@all
	end
end

