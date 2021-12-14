class User < ApplicationRecord
  has_many :items, dependent: :destroy
  has_many :requests, dependent: :destroy
  acts_as_token_authenticatable
  # validates :nickname, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
