class Collaborator < ApplicationRecord
  # associations
  belongs_to :user
  belongs_to :note
end
