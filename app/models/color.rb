class Color < ApplicationRecord
  # associations
  belongs_to :user
  has_many :notes, dependent: :nullify

  # validations
  validates :color, presence: true, uniqueness: { scope: %i[user_id] }
end
