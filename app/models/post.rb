class Post < ApplicationRecord
    belongs_to :user
    has_many :like, :class_name => 'User'
    has_many :comments
    
end
