class Post < ApplicationRecord
    validates :title, presence: true, length: { minimun: 5, maximum: 50 }
    validates :body, presence: true, length: { minimun: 5, maximum: 1000 } 
    # length: { minimun: 5, maximum: 50 }
    # length: { minimun: 10, maximum: 1000 }
    belongs_to :user
    has_many :comments, dependent: :destroy
end
