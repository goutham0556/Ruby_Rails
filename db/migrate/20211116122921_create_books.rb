class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.integer :book_id
      t.string :book_title
      t.string :author
      t.string :publisher
      t.integer :year

      t.timestamps
    end
  end
end
