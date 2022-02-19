class Workflow < ApplicationRecord
  belongs_to :user
  has_many :favourite

  validates :title, :description, :walkthrough, :program, presence: true
end
