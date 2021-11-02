class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos, id: :uuid do |t|
      t.references :note, null: false, foreign_key: true, type: :uuid
      t.text :content, null: false, default: ""
      t.integer :status, default: 0
      t.integer :sequence, default: 0

      t.timestamps
    end
  end
end
