class CreateUsersAgain < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, null: false
    end

    add_index :users, :username
  end
end
