class CreateColors < ActiveRecord::Migration[6.1]
  def change
    create_table :colors, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.string :color, null: false, default: ""

      t.timestamps
    end
  end
end
