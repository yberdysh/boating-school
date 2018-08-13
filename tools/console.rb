require_relative '../config/environment'

madeline = Student.new("Madeline", "Celis")
vadim = Student.new("Vadim", "Avnilov")

jane = Instructor.new('Jane')
prince = Instructor.new('Prince')

test1 = BoatingTest.new(madeline, "First Boating Test", "fail", jane)
test2 = BoatingTest.new(vadim, "First Boating Test", "pass", jane)
test3 = BoatingTest.new(madeline, "Second Boating Test", "pass", prince)
test4 = BoatingTest.new(vadim, "Fifth Boating Test", "fail", prince)

binding.pry