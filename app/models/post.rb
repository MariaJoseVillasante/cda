class Post < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true 
    # length: { minimun: 10, maximun:150}
end
