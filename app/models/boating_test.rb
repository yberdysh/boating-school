class BoatingTest
	attr_accessor :status, :test_name
	attr_reader :student_object, :instructor_object
	@@all = []

	def initialize(student_object, test_name, status, instructor_object)
		@student_object = student_object
		@test_name = test_name
		@status = status
		@instructor_object = instructor_object
		@@all << self
	end

	def self.all
		@@all
	end

end
