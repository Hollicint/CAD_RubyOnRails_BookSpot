class NextBooksController < ApplicationController
    # initializes the repository in one go without repeating throughout the page
    before_action :set_repository
   
    def index
        # get all books
        @next_books = @next_book_repository.all
        # creates instance for the form
        @next_book = NextBook.new
    end

    # creates  post for future book to be added
    def create
        # instance of new book with parameters
        @next_book = @next_book_repository.new(next_book_params)

        # if statement to check book and display when saved
        if @next_book.save
            @next_books = @next_book_repository.all
           # render :index
           redirect_to next_books_path
        else
            @next_books = @next_book_repository.all
            #render :index
            redirect_to next_books_path
        end
    end

    private
        # initializes the repository at the before_action line at the top of the page
        def set_repository
            @next_book_repository = BaseRepository.new(NextBook)
        end
        def set_book
            # located book by id
            @next_book = @next_book_repository.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def next_book_params
            params.require(:next_book).permit(:title, :author, :status, :note)
        end

end
