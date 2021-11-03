class Collaborator < ApplicationRecord
  # associations
  belongs_to :user
  belongs_to :note

  # validations
  validates :user_id, uniqueness: { scope: %i[note_id] }
  validate :check_user

  private

  def check_user
    if user.eql?(note.user)
      errors.add(:user, "equal to current user")
    end
  end
end
