class Book < ApplicationRecord

    validates  :title, presence: true
    validates  :author, presence: true
    validates  :genre, presence: true
    validates  :book_description, presence: true
    validates  :book_cost, presence: true

end
