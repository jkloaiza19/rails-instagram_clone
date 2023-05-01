# The `Post` class represents a post with images that belongs to a user, and includes validations,
# attachments, and scopes for finding posts by caption and ordering by creation date.
class Post < ApplicationRecord
  validates :images, presence: true
  validates :images, presence: true, blob: { content_type: ['image/png', 'image/jpg', 'image/jpeg'] }
  belongs_to :user
  has_many_attached :images

  scope :recent, -> { order(created_at: :desc) }
  scope :find_by_caption, -> (str) { where('caption ILIKE ?', "%#{str}%") } 
end
