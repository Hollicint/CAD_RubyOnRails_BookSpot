require "test_helper"

class NextBookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
   # test form not saved of no data
  test "Next Book shouldn't be added without form fully filled in" do
    nextBook = NextBook.new
    assert_not nextBook.save, "not save book without form complete"

end  
  # test form filled
  test "Next Book should be added when form is fully filled " do
    nextBook = NextBook.new(title: "Way of the house Husband", author: "Kousuke Oono", status:"Havent finished", note:"Need to buy next in series")
    assert nextBook.save, "Save the book"
  end 

   # test form not fully filled in
  test "Next Book shouldn't be added as not fully filled " do
    nextBook = NextBook.new(title: "Way of the house Husband", status:"Havent finished")
    assert_not nextBook.save, "not save book without form being filled in completely"
  end 



end
