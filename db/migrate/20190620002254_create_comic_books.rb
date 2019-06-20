class CreateComicBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :comic_books do |t|
      t.string :name
      t.string :author
      t.text :description

      t.timestamps
    end
  end
end
