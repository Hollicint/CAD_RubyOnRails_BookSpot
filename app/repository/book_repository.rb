## inhert subclass 

class BookRepository < BaseRepository
    def initialize
        super(Book)
    end    

end
    # when class was single
   # # Gets all the books from database
   # def all
   #     Book.all
   # end
#
   # # Locates book by certain Id
   # def find
   #     Book.find(id)
   # end
#
   # # Creates the new book with a parameter
   # def create(book_param)
   #     Book.create(book_param)
   # end
#
   # # Updates the book with the parameter
   # def update(book, book_param)
   #     book.update(book_param)
   # end
#
   # # Deletes the book
   # def destroy(book)
   #     book.destroy
   # end

