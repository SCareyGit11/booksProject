class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :category
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
