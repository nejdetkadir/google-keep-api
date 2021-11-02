class Color < ApplicationRecord
  # associations
  belongs_to :user

  # validations
  validates :color, presence: true, uniqueness: { scope: %i[user_id] }

  def as_json(*args)
    {
      id: id,
      color: color
    }
  end
end
