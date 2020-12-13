class News < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { maximum: 200 }
  validates :subtitle, presence: true, length: { maximum: 150 }
  validates :content, presence: true
end
