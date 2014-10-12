# Student class can enroll in courses. We can calculate how much 
# load he has, by counting up the number of credits. 

class Student
  attr_reader :courses
  
  
  def initialize(first_name, last_name)
    @first_name = first_name 
    @last_name = last_name
    @courses = []
  end
  
  def name
    "#{@first_name} #{@last_name}"
  end
  
  def enroll(course)
      unless @courses.include?(course)
        @courses << course
        course.add_student(self)
      end
  end
  
  def course_load
    course_load = {}
    self.courses.each do |i_course|
      if !course_load.include?(i_course.dept)
        course_load[i_course.dept] = i_course.num_credits  
      else
        course_load[i_course.dept] += i_course.num_credits  
      end
    end
    course_load
  end
  
end



class Course
  attr_reader :dept, :num_credits
  
  
  def initialize(name, dept, num_credits)
    @name = name
    @dept = dept
    @num_credits = num_credits
    @students = []
  end
  
  def students
    @students 
  end
  
  def add_student(student)
    unless students.include?(student)
      students << student
      student.enroll(self)
    end
  end 
  
end
joe = Student.new("Joe", "Smith")
george = Student.new('George', 'Herman')

span_course = Course.new("Spanish", "Humanities", 5)
fren_course = Course.new("French", "Humanities", 2)
cooking_course = Course.new("Cooking", "Culinary", 3)


george.enroll(span_course)

p george.courses



