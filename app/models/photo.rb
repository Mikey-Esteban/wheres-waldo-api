class Photo < ApplicationRecord
  before_create :to_slug
  validates :title, presence: true

  has_many :scores, dependent: :destroy


  private

  def to_slug
    self.slug = self.title.parameterize
  end

end
