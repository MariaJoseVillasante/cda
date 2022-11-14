class Post < ApplicationRecord
    validates :title, presence: true, length: { minimun: 5, maximum: 50 }
    validates :body, presence: true #, length: { minimun: 5, maximum: 2000 } 
    belongs_to :user
    has_many :comments, dependent: :destroy

    has_rich_text :body
    has_one :content, class_name: 'ActionText::RichText', as: :record, dependent: :destroy 

    has_noticed_notifications model_name: 'Notification'
    has_many :notifications, through: :users
end
