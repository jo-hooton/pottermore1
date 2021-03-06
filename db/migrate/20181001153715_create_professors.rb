class CreateProfessors < ActiveRecord::Migration[5.2]
  def change
    create_table :professors do |t|
      t.string :name
      t.text :bio
      t.references :house, foreign_key: true

      t.timestamps
    end
  end
end
