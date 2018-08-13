class Instructor
	attr_accessor :name

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def fail_student(student_name, test_name)
		test = find_test(student_name, test_name)
		test.status = "fail"
	end

	def pass_student(student_name, test_name)
		test = find_test(student_name, test_name)
		test.status = "pass"
	end

	def boating_tests
		BoatingTest.all.select{|test| test.instructor_object == self}
	end

	private

	def find_test(student_name, test_name)
		BoatingTest.all.find{|test| test.student_object.full_name == student_name && test.test_name == test_name && test.instructor_object == self}
	end

end

