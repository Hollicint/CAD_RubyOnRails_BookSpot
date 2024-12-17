require "test_helper"

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
 # test book info to be able use to test 
  setup do
    @book_repository = BookRepository.new
    @books_params ={
      title: "Black Clover", 
      author: "Yuki Tabata", 
      genre:"anime", 
      book_description:"No power boy wants to save the world",
      book_cost:10}
  end  

# test form not saved of no data
  test "Book shouldn't be added without form fully filled in" do
      book = Book.new
      assert_not book.save, "not save book without form complete"
  end  
 # test form filled
  test "Book should be added when form is fully filled " do
      book = Book.new(@books_params)
      assert book.save
    #commented as calling from start
 #    book = Book.new(
 #      title: "Black Clover", 
 #      author: "Yuki Tabata", 
 #      genre:"anime", 
 #      book_description:"No power boy wants to save the world",
 #      book_cost:"10")
 #    assert book.save, "Save the book"
  end 

   # test form filled
   test "Book shouldn't be added with missing params " do
      book = Book.new(
        title: "Black Clover", 
        author: "", genre:"anime", 
        book_description:"",
        book_cost:10)
      assert_not book.save, "Save the book"
   end 

   test "should be able to update book params with new details" do
      book = Book.create(@books_params)
      #new params
      update_params = {
        title: "Black Clover Returns", 
        author: "Yuki Tabata", 
        genre:"anime", 
        book_description:"Asta the Wizard King",
        book_cost:12}
      #updating from orginal params
      update_book = @book_repository.update(book, update_params)
      update_book.reload

      assert_equal "Black Clover Returns", update_book.title
      assert_equal "Asta the Wizard King", update_book.book_description
      assert_equal 12, update_book.book_cost
   
    end 


end
