class Workflow < ApplicationRecord
  has_one_attached :photo
  has_many :favourites
  belongs_to :user
  validates :title, :description, :walkthrough, :program, :loom_url, presence: true
end
