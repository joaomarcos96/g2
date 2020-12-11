class News < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates :title, :content, presence: true
end
