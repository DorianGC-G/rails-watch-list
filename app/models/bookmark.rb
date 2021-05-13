class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  validates :movie, presence: true, uniqueness: true, uniqueness: { scope: :list }
  belongs_to :movie
  belongs_to :list
end
