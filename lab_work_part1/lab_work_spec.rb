require ("minitest/autorun")
require_relative("./lab_work.rb")

class TestBankAccount < MiniTest::Test

  def setup
    @student = Student.new("Ian", 11)
  end


#GETTER
  def test_student_name
    assert_equal("Ian", @student.student_name)
  end

  def test_cohort

    assert_equal(11, @student.cohort)

  end

  def test_student_can_talk

    assert_equal("I can talk", @student.talk())
    
  end



#SETTER
  def test_set_student_name

    @student.set_student_name("Dave")

    assert_equal("Dave", @student.student_name)
  end

  def test_set_student_cohort

    @student.set_cohort_num(12)

    assert_equal(12, @student.cohort)
    
  end

  def test_set_fav_language

    assert_equal("I love Ruby", @student.say_favourite_language("Ruby"))
    
  end

end