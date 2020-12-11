class News < ApplicationRecord
  validates :title, :content, presence: true
end
