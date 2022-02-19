class Workflow < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :favourite

  validates :title, :description, :walkthrough, :program, presence: true
end
