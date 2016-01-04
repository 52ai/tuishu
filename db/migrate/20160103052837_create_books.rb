class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :publish
      t.text :abstract
      t.string :picture_url

      t.timestamps null: false
    end
  end
end
