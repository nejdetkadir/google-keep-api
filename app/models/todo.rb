class Todo < ApplicationRecord
  # associations
  belongs_to :note

  # validations
  validates_presence_of :content

  # enumerables
  enum status: [:uncompleted, :completed]
end
