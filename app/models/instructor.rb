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

  def boating_tests
    BoatingTest.all.select do |test|
      test.instructor == self
    end
  end

  def find_test(students_name, tests_name)
    boating_tests.find do |test|
      # binding.pry
      test.student.full_name == students_name && test.test_name == tests_name
    end

    # def find_test(students_name, tests_name)
    #   BoatingTest.all.find do |test|
    #     # binding.pry
    #     test.student.full_name == students_name && test.test_name == tests_name && test.instructor == self
    #   end
  end

  def fail_student(student_name, test_name)
    found_test = find_test(student_name, test_name)
    find_student = Student.all.find{|student| student.full_name == student_name}
    if found_test
      found_test.status = "fail"
    else
      BoatingTest.new(test_name, find_student, "fail", self)
    end

    # (test_name, student, status, instructor)
    # binding.pry

  end

  def pass_student(student_name, test_name)
    found_test = find_test(student_name, test_name)
    found_test.status = "pass"
  end
end


# Instructor#fail_student(student_name, test_name)
# Changes a test's status to being failed
# Instructor#pass_student(student_name, test_name)
# Changes a test's status to being passed
# Instructor#boating_tests
# Shows all boating tests that this instructor is conducting
