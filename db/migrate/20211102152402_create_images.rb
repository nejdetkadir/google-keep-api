class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images, id: :uuid do |t|
      t.references :note, null: false, foreign_key: true, type: :uuid
      t.string :image

      t.timestamps
    end
  end
end
