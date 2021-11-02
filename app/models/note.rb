class Note < ApplicationRecord
  # associations
  belongs_to :user
  belongs_to :label, class_name: 'Label', optional: true
  belongs_to :color, class_name: 'Color', optional: true

  # validations
  validates_presence_of :title, if: -> {content.empty?}
  validates_presence_of :content, if: -> {title.empty?}
end
