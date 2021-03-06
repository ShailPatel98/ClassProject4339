class CreateClassAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :class_assignments do |t|
      t.references :professor, null: false, foreign_key: true
      t.references :classroom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
