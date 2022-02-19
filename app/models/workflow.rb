class Workflow < ApplicationRecord
  has_one_attached :photo
  has_many :favourites

  validates :title, :description, :walkthrough, :program, presence: true
end
