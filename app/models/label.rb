class Label < ApplicationRecord
  # associations
  belongs_to :user

  # validations
  validates :name, presence: true, uniqueness: { scope: %i[user_id] }
  has_many :notes, dependent: :nullify
end
