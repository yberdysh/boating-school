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

  # def full_name
  #   "#{first_name} #{last_name}"
  # end

  def self.full_names
    self.all.map{|student| student.full_name}
  end

  def self.find_student(full_name)
    self.all.find{|student| student.full_name == full_name}
  end


end
# Student.find_student(full_name)
# Takes in a full name as a string and returns back that Student object
