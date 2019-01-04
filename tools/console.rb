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
  matt = Instructor.new("Matt")

  # boating tests
  # test_name, student, status, instructor
  test1 = BoatingTest.new("Hello", cat, "pass", jane)
  test2 = BoatingTest.new("Test 2", cat, "fail", prince)
  test3 = BoatingTest.new("Test 4", steven, "pass", matt)
  test4 = BoatingTest.new("Test", andre, "pass", matt)
  # matt.fail_student("Andre Santiago", "Test")


  # # boating tests
  # steven.add_boating_test(jane, "Hello World", "pass")
  # andre.add_boating_test(greg, "Some Test", "pass?")
  # cat.add_boating_test(jane, "Meow Lessons", "pass")
  # cat.add_boating_test(jane, "More Meow", "fail")

  binding.pry

end

some_method
