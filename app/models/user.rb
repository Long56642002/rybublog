class User < ApplicationRecord
    belongs_to :followers, :class_name => 'User'
    has_many :following, :class_name => 'User', :foreign_key => 'follow_id'
    has_many :posts
end
