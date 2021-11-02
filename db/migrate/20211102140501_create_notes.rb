class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.uuid :label_id
      t.uuid :color_id
      t.integer :status, default: 0
      t.boolean :is_pinned, default: false
      t.string :title, null: false, default: ""
      t.text :content, null: false, default: ""
      t.json :extra, default: {}
      t.integer :sequence, default: 0

      t.timestamps
    end
  end
end
