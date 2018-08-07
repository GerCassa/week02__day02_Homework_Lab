require('minitest/autorun')
require('minitest/rg')
require_relative('../student')

class StudentTest < MiniTest::Test

  def setup()

    @student = Student.new("Gillian", "E1")

  end

  def test_student_has_name()
    assert_equal("Gillian", @student.name())
  end

  def test_student_has_cohort()
    assert_equal("E1", @student.cohort())
  end

  def test_students_name_can_update()
    @student.name = "Paul"
    assert_equal("Paul", @student.name())
  end

  def test_student_can_change_cohort()
    @student.cohort = "E21"
    assert_equal("E21", @student.cohort())
  end

  def test_student_can_talk()
    assert_equal("I can talk", @student.talk())
  end

  def test_student_has_favourite_language()
    assert_equal("I love Ruby", @student.say_favourite_language("Ruby"))
  end

end
