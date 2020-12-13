class News < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { maximum: 200 }
  validates :subtitle, presence: true, length: { maximum: 150 }
  validates :content, presence: true

  before_save :strip_whitespace

  def strip_whitespace
    self.title = self.title.strip unless self.title.nil?
    self.subtitle = self.subtitle.strip unless self.subtitle.nil?
  end
end
