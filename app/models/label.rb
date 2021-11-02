class Label < ApplicationRecord
  # associations
  belongs_to :user

  # validations
  validates_presence_of :name
end
