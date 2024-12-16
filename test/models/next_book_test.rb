require "test_helper"

class NextBookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Next Book shouldn't be added without form fully filled in" do
    nextBook = NextBook.new
    assert_not nextBook.save, "not save book without form complete"

end  

test "Next Book should be added when form is fully filled " do
  nextBook = NextBook.new(title: "Way of the house Husband", author: "Kousuke Oono", status:"Havent finished", note:"Need to buy next in series")
    assert nextBook.save, "Save the book"
end 
end
