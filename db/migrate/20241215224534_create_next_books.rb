class CreateNextBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :next_books do |t|
      t.string :title
      t.string :author
      t.string :status
      t.string :note

      t.timestamps
    end
  end
end
