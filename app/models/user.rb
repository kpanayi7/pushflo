class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :user_name, :email, presence: true
  validates :email, :user_name, confirmation: true, uniqueness: true
  validates :user_name, length: { maximum: 20 }
end
