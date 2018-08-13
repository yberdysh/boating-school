require_relative '../config/environment'

chris = Student.new("Chris", "Chan")
zohra = Student.new("Zohra", "Anwar")
danny = Student.new("Danny", "Krug")
eben = Student.new("Eben", "Woodward")
juan = Student.new("Juan", "Castillo")

jane = Instructor.new("Jane")
prince = Instructor.new("Prince")

test1 = BoatingTest.new(chris, "Speed", "fail", jane)
test2 = BoatingTest.new(zohra, "Turning", "pass", jane)
test3 = BoatingTest.new(danny, "Drunk Boating", "fail", prince)
test4 = BoatingTest.new(juan, "Parking", "pass", prince)

binding.pry