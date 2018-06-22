class CreateOpinions < ActiveRecord::Migration[5.2]
  def change
    create_table :opinions do |t|
      t.string :autor_name
      t.string :autor_surname
      t.integer :rate
      t.text :comment
      t.reference :movie

      t.timestamps
    end
  end
end
