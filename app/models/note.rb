class Note < ApplicationRecord
  # associations
  belongs_to :user
  belongs_to :label, class_name: 'Label', optional: true
  belongs_to :color, class_name: 'Color', optional: true
  has_many :images, dependent: :destroy
  has_many :collaborators, dependent: :destroy
  has_many :todos, dependent: :destroy

  # enumerables
  enum status: [:normal, :archived, :deleted]
end
