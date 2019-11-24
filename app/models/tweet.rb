class Tweet < ApplicationRecord
  validates :context, presence: true

  belongs_to :user
  has_many :comments
end
