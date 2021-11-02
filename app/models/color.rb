class Color < ApplicationRecord
  # associations
  belongs_to :user

  # validations
  validates_presence_of :color
end
