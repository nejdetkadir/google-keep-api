class AddFullnameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :fullname, :string, null: false, default: ""
  end
end
