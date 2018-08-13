class Student
	attr_reader :first_name, :last_name, :full_name

	@@all = []

	def initialize(first_name, last_name)
		@first_name = first_name
		@last_name = last_name
		@full_name = "#{first_name} #{last_name}"
		@@all << self
	end

	def self.all
		@@all
	end

	def self.full_names
		@@all.map{|student| student.full_name}
	end

	def self.find_student(full_name)
		@@all.find{|student| student.full_name == full_name}
	end

	def add_boating_test(instructor, test_name, test_status)
		BoatingTest.new(self, test_name, test_status, instructor)
	end
end
