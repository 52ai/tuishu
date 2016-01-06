class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :userid
      t.string :username
      t.string :password
      t.string :sex

      t.timestamps null: false
    end
  end
end
