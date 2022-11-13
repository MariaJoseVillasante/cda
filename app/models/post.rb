class Post < ApplicationRecord
    validates :title, presence: true, length: { minimun: 5, maximum: 50 }
    validates :body, presence: true, length: { minimun: 5, maximum: 1000 } 
    belongs_to :user
    has_many :comments, dependent: :destroy

    has_noticed_notifications model_name: 'Notification'
    has_many :notifications, through: :users, dependent: :destroy
end
