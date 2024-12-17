require "test_helper"

class NextBooksControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  #setting book info to test
  setup do
    @next_book = NextBook.create(title: "The Lovely Bones",author: "Alice Sebold", status:"Need to look into", note:"Might be too sad")
  end 
  #should load the book info
  test "should get index" do
    get new_book_url
    assert_response :success
  end
  
  #testing data inputed

  test "should create next book with params" do
    assert_difference('NextBook.count', 1) do
      post next_books_url, params:{next_book:{title: "The Lovely Bones",author: "Alice Sebold", status:"Need to look into", note:"Might be too sad"}}
    end  
    assert_redirected_to next_books_url
  end
  #testing no data inputed and get negative response

  test "should not create next book with no params" do
    assert_no_difference('NextBook.count') do
      post next_books_url #, params:{next_books:{}} #title: "",author: "", status:"", note:""}}
    end  
    assert_response :bad_request #:success
  end



end
