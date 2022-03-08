class Workflow < ApplicationRecord
  has_one_attached :photo
  has_many :favorites
  belongs_to :user
  validates :title, :description, :walkthrough, :program, :loom_url, presence: true
  acts_as_favoritable
end
