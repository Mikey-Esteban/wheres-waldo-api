class Score < ApplicationRecord
  belongs_to :photo

  validates :name, presence: true
  validates :time, presence: true
end
