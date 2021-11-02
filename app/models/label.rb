class Label < ApplicationRecord
  # associations
  belongs_to :user

  # validations
  validates :name, presence: true, uniqueness: { scope: %i[user_id] }

  def as_json(*args)
    {
      id: id,
      name: name
    }
  end
end
