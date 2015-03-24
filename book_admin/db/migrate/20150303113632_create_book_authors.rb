class CreateBookAuthors < ActiveRecord::Migration
  def change
    create_table :book_authors do |t|
      t.references :book, index: true
      t.references :author, index: true

      t.timestamps null: false
    end
    add_foreign_key :book_authors, :books
    add_foreign_key :book_authors, :authors
  end
end
