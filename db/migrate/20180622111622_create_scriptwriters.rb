class CreateScriptwriters < ActiveRecord::Migration[5.2]
  def change
    create_table :scriptwriters do |t|
      t.string :name
      t.string :surname

      t.timestamps
    end
  end
end
