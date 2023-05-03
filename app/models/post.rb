# The `Post` class represents a post with images that belongs to a user, and includes validations,
# attachments, and scopes for finding posts by caption and ordering by creation date.
class Post < ApplicationRecord
  validates :images, presence: true
  validates :images, presence: true, blob: { content_type: ['image/png', 'image/jpg', 'image/jpeg', 'video/mp4'] }
  belongs_to :user
  has_many_attached :images
  has_many :likes
  has_many :likers, through: :likes, source: :user

  scope :recent, -> { order(created_at: :desc) }
  scope :find_by_caption, -> (str) { where('caption ILIKE ?', "%#{str}%") } 
end
