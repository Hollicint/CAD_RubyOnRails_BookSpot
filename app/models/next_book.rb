class NextBook < ApplicationRecord
    validates  :title, presence: true
    validates  :author, presence: true
    validates  :status, presence: true
    validates  :note, presence: true
end
