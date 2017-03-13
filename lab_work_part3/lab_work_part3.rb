class Library

  attr_accessor :books

def initialize(books)
  @books = books
end

  def all_books_with_deets()
    return @books
  end

  def book_title(book_title)
    for book in @books
      if book_title == book[:title]
        return book
      end
    end
    return nil
  end

  def title_for_rental_deets(book_title)
    for book in @books
      if book_title == book[:title]
        return book[:rental_details]
      end
    end
  end


  def new_book(new_book_title)
    @books << new_book_title
  end

  def rented_book(book_title, student_renting, new_date)
   #Not a notion!
  end

end