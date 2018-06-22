class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name, null: false
      t.date :premiere_date, null: false
      t.string :length, null: false
      t.text :description, null: false
      t.references :genre, foreign_key: true
      t.references :country, foreign_key: true
      t.references :director, foreign_key: true
      t.references :scriptwriter, foreign_key: true

      t.timestamps
    end
  end
end
