require "test_helper"

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Book shouldn't be added without form fully filled in" do
      book = Book.new
      assert_not book.save, "not save book without form complete"

  end  

  test "Book should be added when form is fully filled " do
      book = Book.new(title: "Black Clover", author: "Yuki Tabata", genre:"anime", book_description:"No power boy wants to save the world",book_cost:"10")
      assert book.save, "Save the book"
  end 
end
