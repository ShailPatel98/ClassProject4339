class CreateProfessors < ActiveRecord::Migration[6.0]
  def change
    create_table :professors do |t|
      t.string :first_name
      t.string :last_name
      t.references :office, null: false, foreign_key: true

      t.timestamps
    end
  end
end
