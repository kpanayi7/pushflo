class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :photo
  has_many :favourites, dependent: :destroy
  has_many :workflows

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :user_name, :email, :password, presence: true
  validates :email, :user_name, confirmation: true, uniqueness: true
  # validates :user_name
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
