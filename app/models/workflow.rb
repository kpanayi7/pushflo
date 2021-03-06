class Workflow < ApplicationRecord
  has_one_attached :SDimage
  has_one_attached :SDprofile
  has_rich_text :content
  has_many :favourites, dependent: :destroy
  belongs_to :user
  validates :title,  :program, :loom_url, :approved, presence: true
  validates_length_of :title, :maximum => 50

end
