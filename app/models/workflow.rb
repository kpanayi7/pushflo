class Workflow < ApplicationRecord
  has_one_attached :photo
  has_one_attached :SDprofile
  has_rich_text :content
  has_many :favourites
  belongs_to :user
  validates :title,  :program, :loom_url, presence: true
end
