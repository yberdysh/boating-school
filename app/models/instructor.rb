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
		boating_test = find_test(student_name, test_name)
		boating_test.status = "FAIL"
	end

	def pass_student(student_name, test_name)
		boating_test = find_test(student_name, test_name)
		boating_test.status = "PASS"
		
	end

	def boating_tests
		BoatingTest.all.select{|test| test.instructor == self}
	end

	private

	def find_test(student_name, test_name)
		BoatingTest.all.find{|test| test.test_name == test_name && test.student.full_name == student_name && test.instructor == self}
	end

end
