require_relative '../config/environment'

# students

def some_method
	steven = Student.new("Ever", "Greatest")
	marlon = Student.new("Marlon", "Brando")
	andre = Student.new("Andre", "Santiago")
	cat = Student.new("Poseidon", "Costa")

	# ?instructors
	jane = Instructor.new("Jane")
	prince = Instructor.new("Prince")
	greg = Instructor.new("Greg")

	# boating tests
	steven.add_boating_test(jane, "Hello World", "pass")
	andre.add_boating_test(greg, "Some Test", "pass?")
	cat.add_boating_test(jane, "Meow Lessons", "pass")
	cat.add_boating_test(jane, "More Meow", "fail")

	binding.pry
	
end

some_method