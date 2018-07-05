class Instructor
	attr_reader :name

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def fail_student(student_name, test_name)
		the_test = BoatingTest.all.find{|test| test.instructor == self && test.student.full_name == student_name && test.name == test_name}
		the_test.status = "fail"
		
	end

	def pass_student(student_name, test_name)
		the_test = BoatingTest.all.find{|test| test.instructor == self && test.student.full_name == student_name && test.name == test_name}
		the_test.status = "pass"
		
	end

	def boating_tests
		# look through all boating tests, select just instructor's
		BoatingTest.all.select{|test| test.instructor == self}
	end
end

