require ("minitest/autorun")
require_relative("./lab_work_part3.rb")

class TestLibrary < MiniTest::Test

  def setup

  @books = [{
    title: "Lord of the Rings",
    rental_details: {
      student_name: "Ian Tennyson",
      date: "16/01/2017"
    }
    },

    {
      title: "Harry Potter",
      rental_details: {
        student_name: "Peadar Mc Keown",
        date: "06/08/2017"
      }
    },

    {
    title: "Jack Reacher",
    rental_details: {
      student_name: "Nicola Hopper",
      date: "06/07/2017"
      }
    }
  ]

  @library1 = Library.new(@books)
  

  end

  def test_all_books_with_deets
  
  assert_equal( 3, @library1.all_books_with_deets.length )

  end

  def test_book_title

    assert_equal(@books[0], @library1.book_title("Lord of the Rings"))
    
  end

  def test_title_for_rental_deets

    assert_equal(2, @library1.title_for_rental_deets("Lord of the Rings").length)
    
  end

  def test_new_book

    assert_equal(4, @library1.new_book("Fight Club").length)
    
  end

  def test_rented_book()
    
    expected = @books[:rental_details][:student_name].value = "NicHops"

    actual = @books.rented_book("Fight Club, NicHops", "08/07/2017")

assert_equal(expected, actual)

  end

end