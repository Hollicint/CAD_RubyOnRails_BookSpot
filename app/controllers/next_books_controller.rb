class NextBooksController < ApplicationController
    def index
        # get all books
        @next_books = NextBook.all
        # creates instance for the form
        @next_book = NextBook.new
    end

    # creates  post for future book to be added
    def create
        # instance of new book with parameters
        @next_book = NextBook.new(next_book_params)

        # if statement to check book and display when saved
        if @next_book.save
            @next_books = NextBook.all
            render :index
        else
            @next_books = NextBook.all
            render :index
        end
    end

    private
        # Only allow a list of trusted parameters through.

        def next_book_params
            params.require(:next_book).permit(:title, :author, :status, :note)
        end
end
