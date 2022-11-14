class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :followers, :class_name => 'User', optional: true
  has_many :following, :class_name => 'User', :foreign_key => 'follow_id'
  has_many :posts
end
