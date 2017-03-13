class Student

  def initialize(student_name, cohort_number)
    @student_name = student_name
    @cohort = cohort_number
    # @favourite_language = favourite_language
  end


#GETTER
  def student_name
    return @student_name 
  end
    
  def cohort
    return @cohort
  end

#SETTER
  def set_student_name(new_name)
    @student_name = new_name
  end

  def set_cohort_num(new_num)
    @cohort = new_num
  end

  def say_favourite_language(favourite_language)
    return "I love #{favourite_language}"
  end

  def talk()
    return "I can talk"
  end

  # def set_fav_language(programming_language)
  #   @speech = programming_language

  #   return @speech
  # end
 
end